# Pulls Terminal ID from dd.dat; currently cannot locate ID in registry. Need further research. However this method also works.

Set-Variable -Name "termID" -Value ((Select-String -Path C:\WebATM\dd.dat -Pattern "GLOBAL.MACHINENUMBER").toString()).substring(43)

Write-Output $termID

