o#!/bin/bash

#Vars
IDENT="NULL"
SN="NULL"
CPU="NULL"
CPU_Cores="NULL"
MEM="NULL"
HDD="NULL"
SSD="NULL"
GPU="NULL"
GPU_Cores="NULL"
DISP="NULL"
HEALTH="NULL"
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
echo $'        ^ This is Bert, not Ben! Bert is a Nark.'
echo -n''
printf "\n"



#Fancy Colours and Shit
RED="\033[0;31m"
NC="\033[0m"

sleep 0.5

#Find My Check
fmmToken=$(/usr/sbin/nvram -x -p | /usr/bin/grep fmm-mobileme-token-FMM) 
 
if [ -z "$fmmToken" ]; 
then 
FINDMY="FIND MY IPHONE OFF"
printf "\nFIND MY IPHONE IS OFF!!!"
else 
FINDMY="FIND MY IPHONE ON"
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
printf "\n${RED}FIND MY IPHONE IS ON PLEASE DISABLE!!!${NC}"
sleep 0.1
fi 
echo $FINDMY > findmy.txt
sleep 1

#ACTUALLY DOING SHIT
printf "\nIdentifying system configuration this may take ${RED}some${NC} time...\r"
IDENT=$(system_profiler SPSoftwareDataType SPHardwareDataType | grep "Model Identifier")
SN=$(system_profiler SPHardwareDataType | grep "Serial Number")
echo $SN > sn.txt
printf "Identifying system configuration this may take ${RED}some${NC} time....\r"
CPU=$(sysctl -n machdep.cpu.brand_string)
CPU_Cores=$(sysctl -n hw.ncpu)
printf "Identifying system configuration this may take ${RED}some${NC} time.....\r"

sleep 0.5

printf "Identifying system configuration this may take ${RED}some${NC} time......\r"
MEM=$(system_profiler SPSoftwareDataType SPHardwareDataType | grep "Memory")
printf "Identifying system configuration this may take ${RED}some${NC} time........\r"

sleep 1

printf "Identifying system configuration this may take ${RED}some${NC} time.........\r"
HDD=$(system_profiler SPSoftwareDataType SPSerialATADataType | grep "Model")
printf "Identifying system configuration this may take ${RED}some${NC} time..........\r"
SSD=$(system_profiler SPSoftwareDataType SPNVMeDataType | grep "Model")
printf "Identifying system configuration this may take ${RED}some${NC} time..................\r"
GPU=$(system_profiler SPSoftwareDataType SPDisplaysDataType | grep "Model")
GPU_Cores=$(system_profiler SPDisplaysDataType)
DISP=$(system_profiler SPSoftwareDataType SPDisplaysDataType | grep "Display Type")
printf "Identifying system configuration this may take ${RED}some${NC} time...................\r"
HEALTH=$(system_profiler SPSoftwareDataType SPPowerDataType | grep "Condition")
CYC=$(system_profiler SPSoftwareDataType SPPowerDataType | grep "Cycle")
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
if [ -z "$HDD" ];
then
  printf "There are ${RED}NO SATA Drive(s)${NC} present in this system.\n"
else
  echo $HDD
fi
if [ -z "$SSD" ];
then
  printf "There are ${RED}NO NVME SSD(s)${NC} present in this system.\n"
else
  echo $SSD
fi
printf "${RED}GPU(s);${NC}\n"
echo $GPU
printf "${RED}GPU Core(s);${NC}\n"
echo $GPU_Cores
printf "${RED}Display(s);${NC}\n"
echo $DISP
printf "${RED}Battery Information;${NC}\n"
echo $CYC
echo $HEALTH

sleep 0.5

read -n 1 -r -s -p $'Press enter to continue...\n'

echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Installing Python 3, Pip & Gspread"
brew install python
python3 -m pip install –upgrade pip
pip3 install mock-open
pip install gspread
pip install pandas
curl -s https://raw.githubusercontent.com/Big-Yee/Mac-System-Info-Viewer/Test-Branch/credentials.json > credentials.json
python3 < <(curl -s https://raw.githubusercontent.com/Big-Yee/Mac-System-Info-Viewer/Test-Branch/main.py)
echo "Installing SmartMonTools..."
brew install smartmontools && sudo smartctl
printf "The command will now list all disk to view S.M.A.R.T Attributes of. ${RED}You will be asked to select one of these.${NC}\n"

sleep 0.5

read -n 1 -r -s -p $'Press enter to continue...\n'

diskutil list
printf "Please Enter the identifier you'd like to see S.M.A.R.T Data for. e.g. 0; "
read INPUT
smartctl -a /dev/disk$INPUT
echo "Disk Utility will now verify that disk. "

sleep 0.5

read -n 1 -r -s -p $'Press enter to continue...\n'

diskutil verifyDisk /dev/disk$INPUT

sleep 0.5

printf "To Securely Erase a Mac's ${RED}HDD${NC}. Please enter ${RED}diskutil secureErase 1 /dev/disk0${NC} from the ${RED}RECOVERY ENVIRONMENT DO NOT USE THIS ON SSDs${NC}. \n"

#BETA
#Install and use FIRREBASE
#curl -sL https://firebase.tools | bash
