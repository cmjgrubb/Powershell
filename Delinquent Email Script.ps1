<#
Author: CMJ Grubb
Date: 02/17/2022

Description: This script will iterate through an Excel spreadsheet and send E-mails based on the information contained.

Dependencies: ImportExcel module by Doug Finke - https://github.com/dfinke/ImportExcel
#>

# Prompt user for cut-off date in E-mail
$cutoffDate = Read-Host 'Please enter the cut-off date: '

# Read the date in from the Excel file
$data = Import-Excel "*.xlsx"

# Get credentials for sending E-mail
$credential = Get-Credential

foreach ($field in $data)
{
    if($field.Cust_Email -eq $null)
    {}
    else
    {
        ## Define the parameters for Send-MailMessage
        $mailParams = @{
            SmtpServer                 = 'smtp.office365.com'
            Port                       = '587'
            UseSSL                     = $true
            Credential                 = $credential
            From                       = 'E_Billing <e_billing@contoso.com>'
            To                         = $field.Cust_Email
            Subject                    = "RE: Account Name: " + $field.Bill_Name1
            Body                       = "<p>Account Number-Customer ID: " + $field.account + "-" + $field.Cust_Num + "</p><p>Our records indicate that we have not received payment on this account and it is now past due. If you feel this is in error, please contact Customer Service at (888) 555-1212.</p><p>Payment in full must be received by <strong><u>5:00 PM on " + $cutoffDate + "</u></strong>. If payment is not received by this time, a `$50.00 nonpayment fee will be charged to your account and your services will be turned off.</p><p>To avoid service interruption, you can use your Account Number and Customer ID to log in at <a href='https://payments.contoso.com'>https://payments.contoso.com</a> to see your past due balance and to make a payment.</p><p>If you receive an error message, you will need to clear your cache on your computer or phone.  Clear the browser cache (press control+shift+delete on Windows or command+shift+delete on Mac).  From the Clear History dialog box, opt to clear cookies, cached images, & files.</p><p>You can also make a payment at <a href='https://payments.thirdparty.com'>https://payments.thirdparty.com</a>, by phone at 888-555-1313 or in person at 315 Maple Rd. Burbank, CA. <p><strong>Services may be turned off <u>any time</u> after the date referenced.  Once turned off, payment in full will be required to restore service.  Services will be restored within 24 business hours AFTER payment in full has been received.</strong></p>Sincerely,<br>Customer Service Department<br>Contoso Water<br>(888) 555-1212 x104<br><a href='customerservice@contoso.com'>customerservice@contoso.com</a>"
            DeliveryNotificationOption = 'OnFailure', 'OnSuccess'
            BodyAsHtml                 = $true
        }
        Send-MailMessage @mailParams
    }
}
