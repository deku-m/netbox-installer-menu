# Netbox Installer  Menu

This is menu script based in BASH to install, update, configure and backup **Netbox** on **Ubuntu 20.04**. 
You can choose which Netbox version you will install or update.

All the steps from the offical guide can be found here: https://netbox.readthedocs.io/en/stable/installation/
After the installation is ready try to secure nginx with a certificate of your own!
Providing a secure webpage for netbox.

## Menu
1. Install
2. Update
3. Configure
  1. LDAP
  2. SSO
4. Backup
  1. Full 
  2. Schema-Only
  3. Schedule Job
5. Restore

## Screenshots:
![afbeelding](https://user-images.githubusercontent.com/37069737/213706323-b79ae76d-ba37-4190-aa6d-9f6f14472ef9.png)
![afbeelding](https://user-images.githubusercontent.com/37069737/213706382-20f2a8da-5eb3-4bb1-bb24-03eb2172fb69.png)
![afbeelding](https://user-images.githubusercontent.com/37069737/213706426-70c629f3-1880-4457-b1a8-bd456310d3fe.png)

## How to:
Clone the git repo or download the package release provided.
1. > chmod +x menu.sh
2. > run ./menu.sh 
