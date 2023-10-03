#!/bin/bash

#Vars
IDENT="NULL"
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

#Fancy Colours and Shit
RED="\033[0;31m"
NC="\033[0m"

#ACTUALLY DOING SHIT
printf "Identifying system configuration this may take ${RED}some${NC} time...\r"
IDENT=$(system_profiler SPSoftwareDataType SPHardwareDataType | grep "Model Identifier")
printf "Identifying system configuration this may take ${RED}some${NC} time....\r"
CPU=$(sysctl -n machdep.cpu.brand_string)
printf "${RED}CPU Core(s)${NC}\n"
CPU_Cores=$(sysctl -n hw.ncpu)
printf "Identifying system configuration this may take ${RED}some${NC} time.....\r"

sleep .5

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

sleep .5

#Print Output
printf "${RED}System Information;${NC}\n"
echo $IDENT
echo $CPU
echo $CPU_Cores
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

sleep .5

read -n 1 -r -s -p $'Press enter to continue...\n'

echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Installing SmartMonTools..."
brew install smartmontools && sudo smartctl
printf "The command will now list all disk to view S.M.A.R.T Attributes of. ${RED}You will be asked to select one of these.${NC}\n"

sleep .5

read -n 1 -r -s -p $'Press enter to continue...\n'

diskutil list
printf "Please Enter the identifier you'd like to see S.M.A.R.T Data for. e.g. 0; "
read INPUT
smartctl -a /dev/disk$INPUT
echo "Disk Utility will now verify that disk. "

sleep .5

read -n 1 -r -s -p $'Press enter to continue...\n'

diskutil verifyDisk /dev/disk$INPUT

sleep.5

printf "To Securely Erase a Mac's ${RED}HDD${NC}. Please enter ${RED}diskutil secureErase 1 /dev/disk0${NC} from the ${RED}RECOVERY ENVIRONMENT DO NOT USE THIS ON SSDs${NC}. \n"
