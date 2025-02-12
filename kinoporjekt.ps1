# Check if winget is available
if (Get-Command winget -ErrorAction SilentlyContinue) {
    Write-Host "winget found, proceeding with installation..."

    # Install VSCode 
    winget install --id Microsoft.VisualStudioCode -e --source winget

    # Install PostgreSQL 17 server
    winget install --id PostgreSQL.PostgreSQL.17 -e --source winget

    # Install pgAdmin 4
    winget install --id PostgreSQL.pgAdmin -e --source winget

    # Install node LTS
    winget install --id OpenJS.NodeJS.LTS -e --source winget

    # For NPM
    Set-ExecutionPolicy unrestricted
    Write-Host "ExecutionPolicy set to unrestricted."

    Write-Host "Installation complete."
} else {
    Write-Host "winget not found. Please ensure Windows Package Manager is installed."
}
