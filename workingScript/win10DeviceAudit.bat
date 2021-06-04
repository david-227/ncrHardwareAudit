@ echo off
rem write Powershell script to pull EPP serial/model and then run it with bypassed ps exec policy
set exec_dir=c:\qsi_rmc\tools\pullepp.ps1

rem write script to file
echo Set-Variable -Name "eppSerial" -Value  (Get-ItemPropertyValue -path "HKLM:\SOFTWARE\WOW6432Node\NCR\APTRA Self-Service Support (NCR Features)\USB Encrypting Pin Pad 2\Operational Parameters\KEYB-01-USBEPP2\Group1\HardwareVersionNumber" -Name Value) > %exec_dir%
echo echo "EPP Serial: $eppSerial" >> %exec_dir%
echo if       ($eppSerial -eq '009-0031480') { >> %exec_dir%
echo     'Model: EPP4' >> %exec_dir%
echo } elseif ($eppSerial -eq '009-0028973') { >> %exec_dir%
echo     'Model: EPP3' >> %exec_dir%
echo } elseif ($eppSerial -eq '009-027344') { >> %exec_dir%
echo     'Model: EPP2' >> %exec_dir%
echo } elseif ($eppSerial -eq '009-0024379') { >> %exec_dir%
echo     'Model: UEPP2' >> %exec_dir%
echo } else { >> %exec_dir%
echo     'Undefined Model Number' >> %exec_dir%
echo } >> %exec_dir%

rem execute file
powershell.exe -executionpolicy bypass -file c:\qsi_rmc\tools\pullepp.ps1

rem delete file after script runs
del %exec_dir%

pause