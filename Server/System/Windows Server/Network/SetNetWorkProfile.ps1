# Function to check if the current session is running with administrative privileges
function Test-IsAdmin {
    try {
        $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
        $principal = New-Object Security.Principal.WindowsPrincipal -ArgumentList$identity
        return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
    } catch {
        Write-Warning "Unable to determine if the current session has administrative privileges."
        return $false
    }
}

# Check if the current session has administrative privileges
if (-not (Test-IsAdmin)) {
    # The current session does not have administrative privileges
    Write-Warning "This script requires administrative privileges. Please run it as an administrator."

    # Re-launch the script with administrative privileges
    $scriptPath = $MyInvocation.MyCommand.Path
    Write-Host "Script Path:$scriptPath"
    # Start-Process powershell.exe -Verb RunAs -ArgumentList "-ExecutionPolicy Bypass -File `"$scriptPath`""
    # Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`"" -Verb RunAs
    exit
}

# The script continues here if the session has administrative privileges
# Place your administrative commands below this line

# Example command (replace with your actual command)
Write-Host "This script is running with administrative privileges."

# Get network connection profiles
$profiles = Get-NetConnectionProfile

# Check if there are any network profiles
if ($profiles.Count -eq 0) {
    Write-Host "No network profiles found."
    exit
}

# List network profiles with an index
Write-Host "Network Profiles List:"
$index = 0
foreach ($profile in $profiles) {
    $index++
    Write-Host "$index.$($profile.Name) - $($profile.NetworkCategory)"
}

# Prompt the user to select a network profile
$selection = Read-Host "Please enter the index of the network profile you want to change"

# Parse Index to Profile
$selectedProfile = $profiles[$selection - 1]

if ($null -eq $selectedProfile) {
    Write-Host "Invalid index."
    exit
}

# Prompt the user to select the network type
$type = Read-Host "Please enter the type you want to set the network to (Public/Private,Default:Private)"

# Check the user's input for the type
if ($type -eq "Public") {
    # Set the network profile type
    Set-NetConnectionProfile -Name $selectedProfile.Name -NetworkCategory $type
    Write-Host "Network profile has been updated to '$type'."
} else {
    Set-NetConnectionProfile -Name $selectedProfile.Name -NetworkCategory Private
    Write-Host "Network profile has been updated to 'Private'."
}
