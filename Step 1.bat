@echo off
slmgr.vbs /upk
slmgr.vbs /cpky
slmgr.vbs /ckms
DISM /online /Get-TargetEditions
sc config LicenseManager start= auto & net start LicenseManager
sc config wuauserv start= auto & net start wuauserv
changepk.exe /productkey VK7JG-NPHTM-C97JM-9MPGT-3V66T
echo Now you need to wait until this screen is finished. Afterwards you should run step two to activate Windows.
pause
