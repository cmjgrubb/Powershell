<#
Author: CMJ Grubb
Date: 03/01/2022
Description: This script runs Microsoft Update, including Sharepoint updates.
#>
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -AutoReboot -Confirm:$false -ForceInstall
