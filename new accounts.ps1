<#
Author: CMJ Grubb
Date: 07/06/2023

Description: This script will iterate through two Excel spreadsheet. If a user in
"active employees.xlsx" is missing in "FCSA_AGOL_2023-06-21.xlsx," she will be
added to "newusers.xlsx."

Dependencies: ImportExcel module by Doug Finke - https://github.com/dfinke/ImportExcel
#>

# Import files
$activeemployees = Import-Excel "active employees.xlsx"
$existingarcgis = Import-Excel "FCSA_AGOL_2023-06-21.xlsx"

# Create new object and needed fields
$newgis = New-Object System.Data.DataTable
$newgis.Columns.Add("Name") | Out-Null
$newgis.Columns.Add("Email") | Out-Null

# Iterate through the active employees.xlsx spreadsheet. If the user is not in
# FCSA_AGOL_2023-06-21.xlsx, add them to newusers.xlsx.
foreach ($employee in $activeemployees) {
    $notpresent = $true
    foreach ($user in $existingarcgis) {
        if ($user.Email -eq $employee.Email) {
            $notpresent = $false
            break
        }
    }

    if ($notpresent) {
        $newRow = $newgis.NewRow()
        $newRow["Name"] = "$($employee.'First Name') $($employee.'Last Name')"
        $newRow["Email"] = $employee.Email
        $newgis.Rows.Add($newRow)
        Write-Host "$($user.Email) - $($employee.Email)"
    }
}

# Export data to file
$newgis | Export-Excel "newusers.xlsx"
