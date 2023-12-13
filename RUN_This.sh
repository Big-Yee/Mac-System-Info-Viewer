#!/bin/bash

#Vars
IDENT="NULL"
SN="NULL"
CPU="NULL"
CPU_Cores="NULL"
MEM="NULL"
SD="NULL"
GPU="NULL"
DISP="NULL"
CYC="NULL"
INPUT="NULL"

printf "The following script will identify the configuration of the system it is running on. \nIn our testing we have found this to be accurate, however there is always the possibility that this information is not correct and advise that you use your judgement to determine if the data presented to you is accurate. \n"
printf "This script remains the whole property of and was developed by BigYee Ltd. T/A Palland and Nine Security. \nHOWEVER as agreed by our Director the source for this script will remain open source and ANY business that wishes to use this is able to without cost aside from the worked hours of the staff maintaining this should they wish for us to add features to this scrript. \n"
printf "This is to be paid at or above the National Living Wage (NLW) for the United Kindgom and Northern Ireland in compliance with international Modern Slavery legislation. We reserve the right to request further compensation should we deem this appropriate. \n"
printf "Should you encouter an error with this script or the data reported please submit a bug report here; https://github.com/Big-Yee/Mac-System-Info-Viewer/. The same link can be used to submit feature requests. \n"
printf "\n"

sleep 1


echo -n''
echo 
echo $''
sleep 0.05
echo $'      _,.'
sleep 0.05
echo $'    ,` -.)'
sleep 0.05
echo $'   \'( _/\'-\\\\-.'
sleep 0.05
echo $'  /,|`--._,-^|          ,'
sleep 0.05
echo $'  \\_| |`-._/||          ,\'|'
sleep 0.05
echo $'    |  `-, / |         /  /'
sleep 0.05
echo $'    |     || |        /  /'
sleep 0.05
echo $'     `r-._||/   __   /  /'
sleep 0.05
echo $' __,-<_     )`-/  `./  /'
sleep 0.05
echo $'\'  \\   `---\'   \\   /  /'
sleep 0.05
echo $'    |           |./  /'
sleep 0.05
echo $'    /           //  /'
sleep 0.05
echo $'\\_/\' \\         |/  /'
sleep 0.05
echo $' |    |   _,^-\'/  /'
sleep 0.05
echo $' |    , ``  (\\/  /_'
sleep 0.05
echo $'  \\,.->._    \\X-=/^'
sleep 0.05
echo $'  (  /   `-._//^`'
sleep 0.05
echo $'   `Y-.____(__}'
sleep 0.05
echo $'    |     {__)'
sleep 0.05
echo $'    |      (_)`'
sleep 0.05
echo $'    |      ()'
echo $'        ^ This is Bert, not Ben'
echo -n''
printf "\n"

#Fancy Colours and Shit
RED="\033[0;31m"
NC="\033[0m"

#ACTUALLY DOING SHIT
printf "Identifying system configuration this may take ${RED}some${NC} time...\r"
IDENT=$(dmidecode | grep 'SKU Number' | head -1)
SN=$(sudo dmidecode -s system-serial-number)
printf "Identifying system configuration this may take ${RED}some${NC} time....\r"
CPU=$(lscpu | grep "Model name")
CPU_Cores=$(lscpu | grep "Core(s)")
printf "Identifying system configuration this may take ${RED}some${NC} time.....\r"

sleep 0.5

printf "Identifying system configuration this may take ${RED}some${NC} time......\r"
MEM=$(free -m)
printf "Identifying system configuration this may take ${RED}some${NC} time........\r"

sleep 1

printf "Identifying system configuration this may take ${RED}some${NC} time.........\r"
printf "Identifying system configuration this may take ${RED}some${NC} time..........\r"
SD=$(lsblk)
printf "Identifying system configuration this may take ${RED}some${NC} time..................\r"
GPU=$(lspci -v | grep "VGA")
DISP=$(xdpyinfo | grep dimensions)
printf "Identifying system configuration this may take ${RED}some${NC} time...................\r"
printf "Identifying system configuration this may take ${RED}some${NC} time...................${RED}DONE!${NC}\n"

sleep 0.5

#Print Output
printf "${RED}System Information;${NC}\n"
dmidecode | grep 'SKU Number' | head -1
printf "${RED}Serial Number;${NC}\n"
sudo dmidecode -s system-serial-number
printf "${RED}CPU;${NC}\n"
lscpu | grep "Model name"
printf "${RED}CPU Core(s)${NC}\n"
lscpu | grep "Core(s)"
printf "${RED}RAM${NC}\n"
free -m
printf "${RED}Storage;${NC}\n"
lsblk
printf "${RED}GPU(s);${NC}\n"
lspci -v | grep "VGA"
printf "${RED}Display(s);${NC}\n"
xdpyinfo | grep dimensions
printf "${RED}Battery Information;${NC}\n"
upower --enumerate
upower -i /org/freedesktop/UPower/devices/battery_BAT0

sleep 0.5


#BETA
#Install and use FIRREBASE
#curl -sL https://firebase.tools | bash
