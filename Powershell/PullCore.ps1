#Set-Variable -Name "core" -Value ((([string](wmic baseboard get product)).substring(7)).trim())
#Write-Output "Core: $core"

Set-Variable -Name "core" -Value (Get-ItemPropertyValue -path "HKLM:\HARDWARE\DESCRIPTION\System\BIOS" -Name BaseBoardProduct)

Write-Output "Core: $core"