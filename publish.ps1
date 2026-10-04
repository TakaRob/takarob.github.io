# Script to push changes to GitHub Pages
Write-Host "Publishing to https://github.com/TakaRob/takarob.github.io..." -ForegroundColor Cyan
git add .
$status = git status --porcelain
if ($status) {
    git commit -m "Update website content and resume"
}
git push -u origin main
if ($LASTEXITCODE -eq 0) {
    Write-Host "`nSuccessfully published! Your site will be live at: https://takarob.github.io" -ForegroundColor Green
} else {
    Write-Host "`nPush failed. Please ensure the repository 'takarob.github.io' exists on https://github.com/new" -ForegroundColor Yellow
}
