#page2:
#installing windows ADK 
cd "C:\asd\Windows Kits\10\ADK"
Start-Process -FilePath adksetup.exe -ArgumentList "/s" -wait

#installing windows PE 
cd "C:\asd\Windows Kits\10\ADKWinPEAddons"
Start-Process -FilePath adkwinpesetup.exe -ArgumentList "/s" -wait

#installing MDT,change exe name to mdt.
cd "C:\asd"
start-process -FilePath msiexec.exe -ArgumentList "/i `"mdt.msi`" /quiet /norestart" -wait