@echo off

::Vars
set CPU = "NULL"

::Fancy Colours and Shit

::ACTUALLY DOING SHIT

::CPU
set CPU = wmic cpu get name

::Printing Outputs
echo "%CPU%"
