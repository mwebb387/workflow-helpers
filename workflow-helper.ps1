# Validate that fd is installed
if (-Not (Get-Command fd.exe -errorAction SilentlyContinue))
{
    Write-Host "Installing fd"
    winget install sharkdp.fd
}

# Validate that fzf is installed
if (-Not (Get-Command fzf.exe -errorAction SilentlyContinue))
{
    Write-Host "Installing fzf"
    winget install junegunn.fzf
}

# Load Workflow scripts
. "$PSScriptRoot\dotnet.ps1"
. "$PSScriptRoot\fs.ps1"
. "$PSScriptRoot\node.ps1"
