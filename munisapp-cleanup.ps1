<#
Author: CMJ Grubb
Date: 08/19/2021

Description: This script deletes temporary files from our munisapp server. It was written for 11.3. BE VERY CAREFUL! THIS SCRIPT DELETES STUFF!

Dependencies: ImportExcel module by Doug Finke - https://github.com/dfinke/ImportExcel
#>

Remove-Item D:\genmunis\temp\* -Recurse
Remove-Item D:\genmunis\temp_Live\* -Recurse
Remove-Item D:\genmunis\temp_Train\* -Recurse
Remove-Item D:\genmunis\temp_Verif\* -Recurse
Remove-Item D:\gentest\temp\* -Recurse
Remove-Item D:\gentest\temp_Test\* -Recurse
Remove-Item D:\Octopus\Temp\* -Recurse
Remove-Item D:\musys\temp_verif\* -Recurse
Remove-Item D:\musys\temp_train\* -Recurse
Remove-Item D:\ErpPrep\temp\* -Recurse
Remove-Item D:\FORMUNIS\TEMP\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\ADLive\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\ADTest\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\ADTrain\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\ADVerif\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\Live\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\LiveCentral\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\LiveDash\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\LiveMSS\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\LiveNet\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\LiveRPT\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\LiveSched\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\Test\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\TestSched\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\Train\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\TrainSched\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\Verif\tmp\* -Recurse
Remove-Item D:\fglgas250.38\gaslogs\VerifSched\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\ADLive\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\ADTest\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\ADTrain\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\ADVerif\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\Live\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\LiveCash\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\LiveCentral\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\LiveDash\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\LiveIntegration\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\LiveMSS\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\LiveNet\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\LiveRPT\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\LiveSched\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\Test\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\TestSched\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\Train\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\TrainSched\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\Verif\tmp\* -Recurse
Remove-Item D:\fglgas250.50\gaslogs\VerifSched\tmp\* -Recurse
Remove-Item D:\gentest\web\docroot\mu_tmp\* -Recurse
Remove-Item D:\genmunis\web\docroot\mu_tmp\* -Recurse
Remove-Item D:\gentest\web\gas\int\tmp\* -Recurse
Remove-Item D:\gentest\web\gas\anon\tmp\* -Recurse
Remove-Item D:\inetpub\tylerroot\test\tylerid\authtokenserverext\node_modules\angular-chart.js\tmp\* -Recurse
Remove-Item D:\inetpub\tylerroot\test\tylerid\authtokenserver\node_modules\angular-chart.js\tmp\* -Recurse
Remove-Item D:\gentest\logs\gas\svcMSS\tmp\* -Recurse
Remove-Item D:\gentest\logs\gas\svcSched\tmp\* -Recurse
Remove-Item D:\gentest\logs\gas\app\tmp\* -Recurse
Remove-Item D:\gentest\logs\gas\svc\tmp\* -Recurse
Remove-Item D:\genmunis\web\gas\int\tmp\* -Recurse
Remove-Item D:\genmunis\web\gas\anon\tmp\* -Recurse
