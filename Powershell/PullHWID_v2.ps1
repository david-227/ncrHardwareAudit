#Pull OSSerial from Registry
Set-Variable -Name "cleanedString" -Value (Get-ItemPropertyValue -path "HKLM:\SOFTWARE\WOW6432Node\NCR\VERSIONS" -Name SerialNumberOS)

# convert to hex
Set-Variable -Name "RealHWID" -Value ([Convert]::ToString($cleanedString, 16))

Write-Output "Hardware ID: $realHWID"