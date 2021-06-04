#Currently only works for SDM1 and 2. I know there are serveral other depositors in the world, but I need to find registry keys for them.

Set-Variable -Name 'sdm1Inst' -Value ''
Set-Variable -Name 'sdm2Inst' -Value ''

# Set SDM variables to match a value in the reg that only exist if the SDM is actually installed. If the value does not exist, will set variable to null value.
$sdm1Inst = (Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\WOW6432Node\NCR\APTRA Self-Service Support (NCR Features)\DeviceImage\USB Scalable Deposit Module\DPM_-01-USBScalableDeposit' -Name HWVersion)
$sdm2Inst = (Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\WOW6432Node\NCR\APTRA Self-Service Support (NCR Features)\DeviceImage\USB Scalable Deposit Module 2\DPM_-01-USBScalableDeposit2' -Name HWVersion)

# Check if Variables are null, if they are NOT null, unit has SDM installed. Will check for SDM1 and then SDM2. As more keys are discovered for other deps will add.
if  ($null -ne $sdm1Inst) {
    'SDM1'
} elseif ($null -ne $sdm2Inst) {
    'SDM2'
} else {
    'No Depositor or Unknown Type'
}