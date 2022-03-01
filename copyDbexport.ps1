<#
Author: CMJ Grubb
Date: 08/19/2021
Description: This script copies our database backup and adds the date to the filename.
#>

Copy-Item D:\dbexport\dbexport.bak D:\dbexport\dbexport$(Get-Date -Format "MM-dd-yyyy").bak
