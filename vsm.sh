#!/bin/bash
main_menu() {
    echo "                            "
    echo "██╗   ██╗███████╗███╗   ███╗"
    echo "██║   ██║██╔════╝████╗ ████║"
    echo "██║   ██║███████╗██╔████╔██║"
    echo "╚██╗ ██╔╝╚════██║██║╚██╔╝██║"
    echo " ╚████╔╝ ███████║██║ ╚═╝ ██║"
    echo "  ╚═══╝  ╚══════╝╚═╝     ╚═╝"
    echo "                            "
    echo "  ¬ 1. Installing Basic updates"
    echo "  ¬ 2. Installing Full updates"
    echo "  ¬ 3. Installing full Dist Upgrade"
    echo "  ¬ 4. Installing Docker"
    
    read -p "Select an option: " mainmenu_option
}
basicupdates_menu() {
    clear
    echo "██╗   ██╗███████╗███╗   ███╗"
    echo "██║   ██║██╔════╝████╗ ████║"
    echo "██║   ██║███████╗██╔████╔██║"
    echo "╚██╗ ██╔╝╚════██║██║╚██╔╝██║"
    echo " ╚████╔╝ ███████║██║ ╚═╝ ██║"
    echo "  ╚═══╝  ╚══════╝╚═╝     ╚═╝"
    echo "                            "
    echo "___  ____ ____ _ ____    _  _ ___  ___  ____ ___ ____ ____ "
    echo "|__] |__| [__  | |       |  | |__] |  \ |__|  |  |___ [__  "
    echo "|__] |  | ___] | |___    |__| |    |__/ |  |  |  |___ ___] "
    echo "                                                           "
    echo "  ¬ 1. Local Updates"
    echo "  ¬ 2. Remote Updates"
    read -p "Select an option: " basicupdates_option
}
fullupdates_menu() {
    clear
    echo "██╗   ██╗███████╗███╗   ███╗"
    echo "██║   ██║██╔════╝████╗ ████║"
    echo "██║   ██║███████╗██╔████╔██║"
    echo "╚██╗ ██╔╝╚════██║██║╚██╔╝██║"
    echo " ╚████╔╝ ███████║██║ ╚═╝ ██║"
    echo "  ╚═══╝  ╚══════╝╚═╝     ╚═╝"
    echo "                            "
    echo "____ _  _ _    _       _  _ ___  ___  ____ ___ ____ ____ "
    echo "|___ |  | |    |       |  | |__] |  \ |__|  |  |___ [__  "
    echo "|    |__| |___ |___    |__| |    |__/ |  |  |  |___ ___] "
    echo "                                                         "
    echo "  ¬ 1. Local Updates"
    echo "  ¬ 2. Remote Updates"
    read -p "Select an option: " fullupdates_option
}
fulldistupdates_menu() {
    clear
    echo "██╗   ██╗███████╗███╗   ███╗"
    echo "██║   ██║██╔════╝████╗ ████║"
    echo "██║   ██║███████╗██╔████╔██║"
    echo "╚██╗ ██╔╝╚════██║██║╚██╔╝██║"
    echo " ╚████╔╝ ███████║██║ ╚═╝ ██║"
    echo "  ╚═══╝  ╚══════╝╚═╝     ╚═╝"
    echo "                            "
    echo "____ _  _ _    _       ___  _ ____ ___    _  _ ___  ___  ____ ___ ____ ____ "
    echo "|___ |  | |    |       |  \ | [__   |     |  | |__] |  \ |__|  |  |___ [__  "
    echo "|    |__| |___ |___    |__/ | ___]  |     |__| |    |__/ |  |  |  |___ ___] "
    echo "                                                                            "
    echo "  ¬ 1. Local Updates"
    echo "  ¬ 2. Remote Updates"
    read -p "Select an option: " fulldistupdates_option
}
dockerinstall_menu() {
    clear
    echo "██╗   ██╗███████╗███╗   ███╗"
    echo "██║   ██║██╔════╝████╗ ████║"
    echo "██║   ██║███████╗██╔████╔██║"
    echo "╚██╗ ██╔╝╚════██║██║╚██╔╝██║"
    echo " ╚████╔╝ ███████║██║ ╚═╝ ██║"
    echo "  ╚═══╝  ╚══════╝╚═╝     ╚═╝"
    echo "                            "
    echo "___  ____ ____ _  _ ____ ____    _ _  _ ____ ___ ____ _    _    ";
    echo "|  \ |  | |    |_/  |___ |__/    | |\ | [__   |  |__| |    |    ";
    echo "|__/ |__| |___ | \_ |___ |  \    | | \| ___]  |  |  | |___ |___ ";
    echo "                                                                ";
    echo "  ¬ 1. Local Updates"
    echo "  ¬ 2. Remote Updates"
    read -p "Select an option: " dockerinstall_option
}   
basicupdates_local() {
    sudo apt-get update -y
    sudo apt update -y
}
basicupdates_remote() {
    remote_ip="remoteip"
    read -p "Enter IP address of remote machine: " remote_ip
    ssh $remote_ip 'sudo apt-get update && sudo apt update -y'
}
fullupdates_local() {
    sudo apt-get update -y
    sudo apt update -y
    sudo apt full-upgrade -y
    sudo apt autoremove -y
}
fullupdates_remote() {
    remote_ip="remoteip"
    read -p "Enter IP address of remote machine: " remote_ip
    ssh $remote_ip 'sudo apt-get update -y && sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y'
}
fulldistupdates_local() {
    sudo apt-get update -y
    sudo apt update -y
    sudo apt dist-upgrade -y
    sudo apt autoremove -y
}
fulldistupdates_remote() {
    remote_ip="remoteip"
    read -p "Enter IP address of remote machine: " remote_ip
    ssh $remote_ip 'sudo apt-get update -y && sudo apt update -y && sudo apt dist-upgrade -y && sudo apt autoremove -y'
}
dockerinstall_local() {
    sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
    sudo rm -rf /var/lib/docker
    sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
    sudo rm -rf /var/lib/docker
    sudo rm -rf /var/lib/containerd
    sudo apt-get update
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc
    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
      $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    sudo apt-get install docker-ce docker-compose
    sudo docker run hello-world
    sudo groupadd docker
    sudo usermod -aG docker $USER
    echo "██████╗ ███████╗██████╗  ██████╗  ██████╗ ████████╗"
    echo "██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔═══██╗╚══██╔══╝"
    echo "██████╔╝█████╗  ██████╔╝██║   ██║██║   ██║   ██║   "
    echo "██╔══██╗██╔══╝  ██╔══██╗██║   ██║██║   ██║   ██║   "
    echo "██║  ██║███████╗██████╔╝╚██████╔╝╚██████╔╝   ██║   "
    echo "╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝  ╚═════╝    ╚═╝   "
    echo "                                                   "
    reboot
}
dockerinstall_remote() {
    remote_ip="remoteip"
    read -p "Enter IP address of remote machine: " remote_ip
    ssh $remote_ip "
        echo '______           _____          _        _ _ ';
        echo '| ___ \         |_   _|        | |      | | |';
        echo '| |_/ / __ ___    | | _ __  ___| |_ __ _| | |'';
        echo '|  __/ '__/ _ \   | || '_ \/ __| __/ _\` | | |';
        echo '| |  | | |  __/  _| || | | \__ \ || (_| | | |';
        echo '\_|  |_|  \___|  \___/_| |_|___/\__\__,_|_|_|';
        echo '                                             ';
        echo '                                             ';
        sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras;
        sudo rm -rf /var/lib/docker;
        sudo rm -rf /var/lib/containerd;
        sudo apt-get update;
        sudo apt update -y;
        sudo apt upgrade -y;
        echo '                                                                                ';
        echo '██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ██╗███╗   ██╗ ██████╗     ';
        echo '██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██║████╗  ██║██╔════╝     ';
        echo '██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     ██║██╔██╗ ██║██║  ███╗    ';
        echo '██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██║██║╚██╗██║██║   ██║    ';
        echo '██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗██║██║ ╚████║╚██████╔╝    ';
        echo '╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ';
        echo '                                                                                ';
        echo '██████╗  ██████╗  ██████╗██╗  ██╗███████╗██████╗                                ';
        echo '██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗                               ';
        echo '██║  ██║██║   ██║██║     █████╔╝ █████╗  ██████╔╝                               ';
        echo '██║  ██║██║   ██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗                               ';
        echo '██████╔╝╚██████╔╝╚██████╗██║  ██╗███████╗██║  ██║                               ';
        echo '╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝                               ';
        echo '                                                                                ';
        sudo apt-get install ca-certificates curl;
        sudo install -m 0755 -d /etc/apt/keyrings;
        sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc;
        sudo chmod a+r /etc/apt/keyrings/docker.asc;
        echo \;
          'deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
          $(. /etc/os-release && echo "$VERSION_CODENAME") stable' | \
          sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;
        sudo apt-get update;
        sudo apt-get install docker-ce docker-compose;
        sudo docker run hello-world;
        echo '██████╗  ██████╗ ███████╗████████╗    ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ';
        echo '██╔══██╗██╔═══██╗██╔════╝╚══██╔══╝    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ';
        echo '██████╔╝██║   ██║███████╗   ██║       ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     ';
        echo '██╔═══╝ ██║   ██║╚════██║   ██║       ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ';
        echo '██║     ╚██████╔╝███████║   ██║       ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗';
        echo '╚═╝      ╚═════╝ ╚══════╝   ╚═╝       ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝';
        echo '                                                                                            ';
        sudo groupadd docker;
        sudo usermod -aG docker $USER;
        echo '██████╗ ███████╗██████╗  ██████╗  ██████╗ ████████╗';
        echo '██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔═══██╗╚══██╔══╝';
        echo '██████╔╝█████╗  ██████╔╝██║   ██║██║   ██║   ██║   ';
        echo '██╔══██╗██╔══╝  ██╔══██╗██║   ██║██║   ██║   ██║   ';
        echo '██║  ██║███████╗██████╔╝╚██████╔╝╚██████╔╝   ██║   ';
        echo '╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝  ╚═════╝    ╚═╝   ';
        echo '                                                   ';
        reboot;
    "
}
green="\e[32m"
yellow="\e[33m"
red="\e[31m"
default="\e[0m"
mainmenu_option=0
main_menu

if [ $mainmenu_option -eq 1 ]
then
    basicupdates_option=0
    basicupdates_menu
    if (( $basicupdates_option == 1 ))
    then
        clear
        echo -e "${yellow}____ _  _ ____ ____ _  _ ___ _ _  _ ____    ____ ____ _  _ _  _ ____ _  _ ___  "
        echo -e "|___  \/  |___ |    |  |  |  | |\ | | __    |    |  | |\/| |\/| |__| |\ | |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  | | \| |__]    |___ |__| |  | |  | |  | | \| |__/ "
        echo -e "===============================================================================${default}"
        basicupdates_local
        echo -e "${green}____ _  _ ____ ____ _  _ ___ ____ ___  "
        echo -e "|___  \/  |___ |    |  |  |  |___ |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  |___ |__/ "
        echo -e "=======================================${default}"

    elif (( $basicupdates_option == 2 ))
    then
        clear
        echo -e "${yellow}____ _  _ ____ ____ _  _ ___ _ _  _ ____    ____ ____ _  _ _  _ ____ _  _ ___  "
        echo -e "|___  \/  |___ |    |  |  |  | |\ | | __    |    |  | |\/| |\/| |__| |\ | |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  | | \| |__]    |___ |__| |  | |  | |  | | \| |__/ "
        echo -e "===============================================================================${default}"
        basicupdates_remote
        echo -e "${green}____ _  _ ____ ____ _  _ ___ ____ ___  "
        echo -e "|___  \/  |___ |    |  |  |  |___ |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  |___ |__/ "
        echo -e "=======================================${default}"
    else
        echo "Enter a valid option"
        basicupdates_menu
    fi
elif [ $mainmenu_option -eq 2 ]
then 
    fulldistupdates_option=0
    fullupdates_menu
    if (( $fullupdates_option == 1 ))
    then
        clear
        echo -e "${yellow}____ _  _ ____ ____ _  _ ___ _ _  _ ____    ____ ____ _  _ _  _ ____ _  _ ___  "
        echo -e "|___  \/  |___ |    |  |  |  | |\ | | __    |    |  | |\/| |\/| |__| |\ | |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  | | \| |__]    |___ |__| |  | |  | |  | | \| |__/ "
        echo -e "===============================================================================${default}"
        fullupdates_local
        echo -e "${green}____ _  _ ____ ____ _  _ ___ ____ ___  "
        echo -e "|___  \/  |___ |    |  |  |  |___ |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  |___ |__/ "
        echo -e "=======================================${default}"

    elif (( $fullupdates_option == 2 ))
    then
        clear
        echo -e "${yellow}____ _  _ ____ ____ _  _ ___ _ _  _ ____    ____ ____ _  _ _  _ ____ _  _ ___  "
        echo -e "|___  \/  |___ |    |  |  |  | |\ | | __    |    |  | |\/| |\/| |__| |\ | |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  | | \| |__]    |___ |__| |  | |  | |  | | \| |__/ "
        echo -e "===============================================================================${default}"
        fullupdates_remote
        echo -e "${green}____ _  _ ____ ____ _  _ ___ ____ ___  "
        echo -e "|___  \/  |___ |    |  |  |  |___ |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  |___ |__/ "
        echo -e "=======================================${default}"
    else
        echo "Enter a valid option"
        fullupdates_menu
    fi
elif [ $mainmenu_option -eq 3 ]
then
    fulldistupdates_option=0
    fulldistupdates_menu
    if (( $fulldistupdates_option == 1 ))
    then
        clear
        echo -e "${yellow}____ _  _ ____ ____ _  _ ___ _ _  _ ____    ____ ____ _  _ _  _ ____ _  _ ___  "
        echo -e "|___  \/  |___ |    |  |  |  | |\ | | __    |    |  | |\/| |\/| |__| |\ | |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  | | \| |__]    |___ |__| |  | |  | |  | | \| |__/ "
        echo -e "===============================================================================${default}"
        fulldistupdates_local
        echo -e "${green}____ _  _ ____ ____ _  _ ___ ____ ___  "
        echo -e "|___  \/  |___ |    |  |  |  |___ |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  |___ |__/ "
        echo -e "=======================================${default}"

    elif (( $fulldistupdates_option == 2 ))
    then
        clear
        echo -e "${yellow}____ _  _ ____ ____ _  _ ___ _ _  _ ____    ____ ____ _  _ _  _ ____ _  _ ___  "
        echo -e "|___  \/  |___ |    |  |  |  | |\ | | __    |    |  | |\/| |\/| |__| |\ | |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  | | \| |__]    |___ |__| |  | |  | |  | | \| |__/ "
        echo -e "===============================================================================${default}"
        fulldistupdates_remote
        echo -e "${green}____ _  _ ____ ____ _  _ ___ ____ ___  "
        echo -e "|___  \/  |___ |    |  |  |  |___ |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  |___ |__/ "
        echo -e "=======================================${default}"
    else
        echo "Enter a valid option"
        fulldistupdates_menu
    fi
elif [ $mainmenu_option -eq 4 ]
then
    dockerinstall_option=0
    dockerinstall_menu
    if (( $dockerinstall_option == 1 ))
    then
        clear
        echo -e "${yellow}____ _  _ ____ ____ _  _ ___ _ _  _ ____    ____ ____ _  _ _  _ ____ _  _ ___  "
        echo -e "|___  \/  |___ |    |  |  |  | |\ | | __    |    |  | |\/| |\/| |__| |\ | |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  | | \| |__]    |___ |__| |  | |  | |  | | \| |__/ "
        echo -e "===============================================================================${default}"
        dockerinstall_local
        echo -e "${green}____ _  _ ____ ____ _  _ ___ ____ ___  "
        echo -e "|___  \/  |___ |    |  |  |  |___ |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  |___ |__/ "
        echo -e "=======================================${default}"

    elif (( $dockerinstall_option == 2 ))
    then
        clear
        echo -e "${yellow}____ _  _ ____ ____ _  _ ___ _ _  _ ____    ____ ____ _  _ _  _ ____ _  _ ___  "
        echo -e "|___  \/  |___ |    |  |  |  | |\ | | __    |    |  | |\/| |\/| |__| |\ | |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  | | \| |__]    |___ |__| |  | |  | |  | | \| |__/ "
        echo -e "===============================================================================${default}"
        dockerinstall_remote
        echo -e "${green}____ _  _ ____ ____ _  _ ___ ____ ___  "
        echo -e "|___  \/  |___ |    |  |  |  |___ |  \ "
        echo -e "|___ _/\_ |___ |___ |__|  |  |___ |__/ "
        echo -e "=======================================${default}"
    else
        echo "Enter a valid option"
        dockerinstall_menu
    fi
else
    echo "Enter a valid number"
    main_menu
fi