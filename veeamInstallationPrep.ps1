 <#
Author: CMJ Grubb
Date: 09/01/2022

Description: This script prepares a non-domain computer for Veeam Backup and Replication.
#>

# Enable file and printer sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True -Profile Any

# Disable SMB1 and enable SMB 2/3
Set-SmbServerConfiguration -EnableSMB1Protocol $false
Set-SmbServerConfiguration -EnableSMB2Protocol $true

# Variables for the registry settings that need to be added
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$Name = "LocalAccountTokenFilterPolicy"
$value = "1"

# Create the registry item if it doesn't exist
# Set the value to 1
IF(!(Test-Path $registryPath))
{
    New-Item -Path $registryPath -Force | Out-Null
    New-ItemProperty -Path $registryPath -Name $name -Value $value `
    -PropertyType DWORD -Force | Out-Null
}
ELSE
{
    New-ItemProperty -Path $registryPath -Name $name -Value $value `
    -PropertyType DWORD -Force | Out-Null
} 
