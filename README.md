# Administrateur Serveur Web - Groupe 13

## Dépôt de Configurations

Ce dépôt contient les fichiers de configuration pour NGINX, Samba, et SSH utilisés dans le cadre du projet "admin-serveur-web".

## Structure des fichiers

- `/etc/nginx/sites-available/stephancms.com` : Configuration principale de NGINX.
- `/etc/samba/smb.conf` : Configuration pour le partage de fichiers avec Samba.
- `/etc/ssh/sshd_config` : Configuration du daemon SSH.

## Accès au site web

Le site web est accessible à l'adresse suivante : [stephancms.com](https://stephancms.com)

## Connexion SSH

Pour vous connecter via SSH, utilisez la commande suivante :

```bash
ssh -i chemin_vers_clef_digitalocean stephan@209.38.202.19 -p 1111
```

## Liens utiles

Pour vous aider à configurer et maintenir votre environnement, vous pouvez consulter les tutoriels suivants :

- **Samba** : [Configurer Samba pour une petite organisation sur Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-samba-share-for-a-small-organization-on-ubuntu-16-04)
- **NGINX** : [Installer NGINX sur Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04)
- **MySQL** : [Installer MySQL sur Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04)
- **SSL** : [Sécuriser NGINX avec Let's Encrypt sur Ubuntu 22.04](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-22-04)
