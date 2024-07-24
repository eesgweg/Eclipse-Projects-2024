# Define the path and name of the text file
$filePath = "C:\Users\swats\OneDrive\Desktop\PowerBI Files\file.txt"

# Define the data to be written to the file
$data = @"
This is the first line of text.
This is the second line of text.
This is the third line of text.
"@

# Create the text file and write data to it
# If the file already exists, it will overwrite the existing file
$data | Out-File -FilePath $filePath -Force

# Output a message indicating the file has been created and data written
Write-Output "File created and data written to $filePath"

# Add the necessary .NET assembly to use Windows Forms
Add-Type -AssemblyName System.Windows.Forms
Start-Sleep -Seconds 5

# Define the message and title
$message = "This is a message box with an OK button."
$title = "Message Box Title"

# Show the message box with an OK button
[System.Windows.Forms.MessageBox]::Show($message, $title, [System.Windows.Forms.MessageBoxButtons]::OK)
