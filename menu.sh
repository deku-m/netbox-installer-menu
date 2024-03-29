#!/bin/bash
stty erase ^H

# Files included
source colors
source functions
source vars

if [[ $EUID -ne 0 ]]; then
   echo -e "------------------------------------------------------------------"
   echo -e "$(color_red 'must be run as root.')"
   echo -e "------------------------------------------------------------------"
   exit 1
fi

submenu_p() {
    echo -ne "
$(color_red 'Plugins')
$(color_green '1)') Install
$(color_green '2)') Remove
$(color_green '0)') Exit
$(color_blue 'Choose an option:')"
    read -r ans
    case $ans in
    1) install_plugin ; submenu_p ;;
    2) remove_plugin ; submenu_p ;;
    3) mainmenu ;;
    0) bye  ;;
    *) fail  ;;
    esac
}

submenu_c() {
    echo -ne "
$(color_red 'Configure')
$(color_green '1)') LDAP
$(color_green '2)') SSO
$(color_green '3)') Go Back to Main Menu
$(color_green '0)') Exit
$(color_blue 'Choose an option:')"
    read -r ans
    case $ans in
    1) ldap ; submenu_c ;;
    2) sso ;  submenu_c ;;
    3) mainmenu ;;
    0) bye  ;;
    *) fail  ;;
    esac
}

submenu_b() {
    echo -ne "
$(color_red 'Backup')
$(color_green '1)') Full
$(color_green '2)') Schema-Only
$(color_green '3)') Schedule job
$(color_green '4)') Go Back to Main Menu
$(color_green '0)') Exit
$(color_blue 'Choose an option:')"
    read -r ans
    case $ans in
    1) full_backup ;  submenu_b ;;
    2) schema_only_backup ;  submenu_b ;;
    3) schedule_job ;  submenu_b ;;
    4) mainmenu ;;
    0) bye  ;;
    *) fail  ;;
    esac
}

mainmenu() {
    echo -ne "
$(color_red 'MAIN MENU')
$(color_green '1)') Install
$(color_green '2)') Update
$(color_green '3)') Plugins
$(color_green '4)') Configure
$(color_green '5)') Backup
$(color_green '6)') Restore
$(color_green '0)') Exit
$(color_blue 'Choose an option:')"
    read -r ans
    case $ans in
    1) install_netbox ; mainmenu ;;
    2) update_netbox ; mainmenu ;;
    3) submenu_p ; mainmenu ;;
    4) submenu_c ; mainmenu ;;
    5) submenu_b ; mainmenu ;;
    6) restore ; mainmenu ;;
    0) bye ;;
    *) fail ;;
    esac
}

# Call menu function
mainmenu
