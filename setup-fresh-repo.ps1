# Setup Fresh GitHub Repository Script
# This will help you create a NEW repo and push everything cleanly

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Fresh GitHub Repo Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Remove old git history
Write-Host "Step 1: Removing old git history..." -ForegroundColor Yellow
if (Test-Path .git) {
    Remove-Item -Recurse -Force .git
    Write-Host "Old .git folder removed" -ForegroundColor Green
} else {
    Write-Host "No existing .git folder" -ForegroundColor Green
}

# Step 2: Initialize fresh git repo
Write-Host ""
Write-Host "Step 2: Initializing fresh git repository..." -ForegroundColor Yellow
git init
git branch -M main
Write-Host "Fresh git repo initialized" -ForegroundColor Green

# Step 3: Add all files
Write-Host ""
Write-Host "Step 3: Adding all files..." -ForegroundColor Yellow
git add -A
Write-Host "All files staged" -ForegroundColor Green

# Step 4: Create initial commit
Write-Host ""
Write-Host "Step 4: Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Complete drawing automation app - all fixes applied"
Write-Host "Initial commit created" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "NEXT STEPS:" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Go to GitHub.com and create a NEW repository:" -ForegroundColor White
Write-Host "   - Name it: drawing-automation-app" -ForegroundColor Gray
Write-Host "   - Make it PRIVATE or PUBLIC (your choice)" -ForegroundColor Gray
Write-Host "   - DO NOT initialize with README, .gitignore, or license" -ForegroundColor Gray
Write-Host ""
Write-Host "2. Copy the repository URL" -ForegroundColor White
Write-Host "   Example: https://github.com/YOUR_USERNAME/drawing-automation-app.git" -ForegroundColor Gray
Write-Host ""
Write-Host "3. Run these commands (replace YOUR_REPO_URL):" -ForegroundColor White
Write-Host ""
Write-Host "   git remote add origin YOUR_REPO_URL" -ForegroundColor Yellow
Write-Host "   git push -u origin main" -ForegroundColor Yellow
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Ready to push!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
