# Netbox Installer  Menu

This is menu script based in BASH to install, update, configure and backup **Netbox** on **Ubuntu 22.04**. 
You can choose which Netbox version you will install or update.

All the steps from the offical guide can be found here: https://netbox.readthedocs.io/en/stable/installation/
After the installation is ready try to secure nginx with a certificate of your own!
Providing a secure webpage for netbox.

Backup part creates a full or schema-only backup the file is store in the directory /opt/netbox/backups/database/.
Which then can also be scheduled in cron through the menu.
Or the sql files can be send to external sftp server.
After that you can also restore the sql-files.

"Its might not be perfect and improvements are always welcome."

## Menu
Providing a menu with the following:
1. Install
2. Update
3. Plugins
   1. Install
   2. Remove
4. Configure
   1. LDAP
   2. SSO
5. Backup
   1. Full 
   2. Schema-Only
   3. Schedule Job
6. Restore

## Screenshots:
![afbeelding](https://user-images.githubusercontent.com/37069737/213706323-b79ae76d-ba37-4190-aa6d-9f6f14472ef9.png)
![afbeelding](https://user-images.githubusercontent.com/37069737/213706382-20f2a8da-5eb3-4bb1-bb24-03eb2172fb69.png)
![afbeelding](https://user-images.githubusercontent.com/37069737/213706426-70c629f3-1880-4457-b1a8-bd456310d3fe.png)

## How to:
Clone the git repo or download the package release provided.
1. > chmod +x menu.sh
2. > run ./menu.sh 
