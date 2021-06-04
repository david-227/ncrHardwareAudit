

Set-Variable -Name "eppSerial" -Value  (Get-ItemPropertyValue -path "HKLM:\SOFTWARE\WOW6432Node\NCR\APTRA Self-Service Support (NCR Features)\USB Encrypting Pin Pad 2\Operational Parameters\KEYB-01-USBEPP2\Group1\HardwareVersionNumber" -Name Value)

>>Write-Output $eppSerial

if       ($eppSerial -eq '009-0031480') {
    'EPP4'
} elseif ($eppSerial -eq '009-0028973') {
    'EPP3'
} elseif ($eppSerial -eq '009-027344') {
    'EPP2'
} elseif ($eppSerial -eq '009-0024379') {
    'UEPP2'
} else {
    'Undefined Model Number'
}