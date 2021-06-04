# Pulls Model from dd.dat; currently cannot locate model in registry. Need further research. However this method also works.

Set-Variable -Name "Model" -Value ((Select-String -Path C:\WebATM\dd.dat -Pattern "STARTOFDAY.MACHINETYPE").toString()).substring(45)

Write-Output $Model

