# Define email parameters
$smtpServer = "smtp.your-email-provider.com"
$smtpPort = 587 # Typically, 587 is used for SMTP with TLS
$smtpUser = "your-email@example.com"
$smtpPassword = "your-email-password"

$from = "your-email@example.com"
$to = "recipient-email@example.com"
$subject = "Test Email from PowerShell"
$body = "This is a test email sent from PowerShell script."

# Create secure password
$securePassword = ConvertTo-SecureString -String $smtpPassword -AsPlainText -Force

# Create credential object
$credential = New-Object System.Management.Automation.PSCredential -ArgumentList $smtpUser, $securePassword

# Send email
Send-MailMessage -SmtpServer $smtpServer -Port $smtpPort -Credential $credential -UseSsl `
    -From $from -To $to -Subject $subject -Body $body
