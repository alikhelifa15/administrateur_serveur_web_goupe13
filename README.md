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
