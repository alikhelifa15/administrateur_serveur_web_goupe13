server {

        root /var/www/stephancms.com/html;
        index index.php index.html index.htm;

        server_name stephancms.com www.stephancms.com;

        location / {
                try_files $uri $uri/ =404;
        }

        location ~ \.php$ {
                include snippets/fastcgi-php.conf;
                fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;  # Ensure this matches your PHP version
                fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
                include fastcgi_params;
        }

        location ~ /\.ht {
                deny all;
        }

    listen [::]:443 ssl ipv6only=on; # managed by Certbot
    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/stephancms.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/stephancms.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot


}
server {
    if ($host = www.stephancms.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


    if ($host = stephancms.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


        listen 80;
        listen [::]:80;

        server_name stephancms.com www.stephancms.com;
    return 404; # managed by Certbot




}