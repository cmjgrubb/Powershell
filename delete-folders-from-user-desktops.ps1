<#
Author: CMJ Grubb
Date: 12/29/2021

Description: This script will delete folders $dirname1 and $dirname2 from all user desktops with interactive user prompt for computer name.
#>

# Directory names
$dirname1 = 'New MUNIS'
$dirname2 = 'MUNIS'

# Prompt user for computer name
$compname = Read-Host 'Enter PC name: '

# Delete the folders
remove-item -Recurse -Confirm:$false "\\$compname\c$\Users\*\Desktop\$dirname1"
remove-item -Recurse -Confirm:$false "\\$compname\c$\Users\*\Public Desktop\$dirname1"
remove-item -Recurse -Confirm:$false "\\$compname\c$\Users\*\Desktop\$dirname2"
remove-item -Recurse -Confirm:$false "\\$compname\c$\Users\*\Public Desktop\$dirname2"
