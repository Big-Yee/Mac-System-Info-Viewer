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
echo $IDENT
echo $SN
echo $CPU
printf "${RED}CPU Core(s)${NC}\n"
echo $CPU_Cores
printf "${RED}RAM${NC}\n"
echo $MEM
printf "${RED}Storage;${NC}\n"
echo $SD
printf "${RED}GPU(s);${NC}\n"
echo $GPU
printf "${RED}Display(s);${NC}\n"
echo $DISP

upower --enumerate
upower -i /org/freedesktop/UPower/devices/battery_BAT0

sleep 0.5


#BETA
#Install and use FIRREBASE
#curl -sL https://firebase.tools | bash
