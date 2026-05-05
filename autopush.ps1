# Auto-push wiki changes to GitHub
Set-Location "G:\UNITY\Birb\WikiPage"

Write-Host "Watching wiki for changes... (Ctrl+C to stop)" -ForegroundColor Green

while ($true) {
    $status = git status --porcelain
    if ($status) {
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
        Write-Host "Change detected, pushing..." -ForegroundColor Yellow
        git add .
        git commit -m "Wiki update - $timestamp"
        git push
        Write-Host "Wiki pushed to GitHub at $timestamp" -ForegroundColor Cyan
    }
    Start-Sleep -Seconds 5
}
