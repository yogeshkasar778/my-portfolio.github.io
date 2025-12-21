# PowerShell script to build and publish the portfolio
$ErrorActionPreference = "Stop"

Write-Host "Generating portfolio..." -ForegroundColor Cyan
python generate_portfolio.py

Write-Host "Adding changes to git..." -ForegroundColor Cyan
git add .

$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$commitMessage = "Update portfolio: $timestamp"

Write-Host "Committing changes..." -ForegroundColor Cyan
git commit -m "$commitMessage"

Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
git push

Write-Host "Successfully published!" -ForegroundColor Green
