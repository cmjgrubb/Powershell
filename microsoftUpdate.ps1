<#
Author: CMJ Grubb
Date: 03/01/2022
Description: This script runs Microsoft Update, including Sharepoint updates.
Dependencies: Requires PSWindowsUpdate by Michal Gajda - https://www.powershellgallery.com/packages/PSWindowsUpdate/2.0.0.4
#>
Import-Module PSWindowsUpdate
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -AutoReboot -Confirm:$false -ForceInstall
