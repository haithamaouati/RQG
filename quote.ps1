$host.ui.RawUI.WindowTitle = $MyInvocation.MyCommand.Name

# Author: Haitham Aouati
# GitHub: https://github.com/haithamaouati

# Clear the screen
Clear-Host

# Get the number of lines in the file
$lines = (Get-Content quotes.txt).Count

# Generate a random number between 1 and the number of lines
$random_line = Get-Random -Minimum 1 -Maximum $lines

# Extract the quote at the random line
$quote = Get-Content quotes.txt | Select-Object -Index ($random_line - 1)

# Print the quote
Write-Output $quote
