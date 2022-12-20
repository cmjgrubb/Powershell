 <#
Author: CMJ Grubb
Date: 12/20/2022
Description: This script send an E-mail when an AD account has been locked out.
#>

$From = "smtp@contoso.com"                
$To = "craig.grubb@contoso.com", "brian.thompson@contoso.com", "wesley.gardner@contoso.com"

$Info = Get-WinEvent -ComputerName 'dc1' -MaxEvents 1 -FilterHashTable @{ LogName = "Security"; ID = 4740 } |  %{([xml]$_.ToXml()).Event.EventData.Data } | Out-String
            
$Subject = "Account Locked Out" 
$Body = "A user account has been locked out:`n" + $Info

$SMTPserver= "smtp.office365.com"
$EncryptedPasswordFile = "C:\Scripts\smtppw.txt"
$username="smtp@contoso.com" 
$password = Get-Content -Path $EncryptedPasswordFile | ConvertTo-SecureString
$credential = New-Object System.Management.Automation.PSCredential($username, $password)

Send-MailMessage -ErrorAction Stop -from "$From" -to "$To" -subject "$Subject" -body "$Body" -SmtpServer "$SMTPserver" -Priority  "Normal" -Credential $credential -Port 587 -UseSsl 
