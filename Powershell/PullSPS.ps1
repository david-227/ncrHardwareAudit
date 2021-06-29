Set-Variable -Name "spsEnabled" -Value ""
Get-Service NCRUSBAntiSkimmingModuleDrv
Set-variable -Name "Yeet" -Value $?
if  ($Yeet -eq 'True') {
    $spsEnabled = "SPS Present"
} elseif ($Yeet = 'False') {
    $spsEnabled = "SPS Not Present"
} else {
    $spsEnabled = "Error"
}

Write-Output $spsEnabled