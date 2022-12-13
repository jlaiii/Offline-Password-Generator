# Prompt the user for the length of the password
$length = 25

# Generate a random password using the specified length
$password = -join ((33..90) | Get-Random -Count $length | ForEach-Object {[char]$_})

# Copy the generated password to the clipboard
$password | Clip

# Display a message to indicate that the password has been copied to the clipboard
Write-Host "The password has been copied to the clipboard. You can now paste it into a password field or save it for later use."

# Pause execution until the user presses a key
sleep 4