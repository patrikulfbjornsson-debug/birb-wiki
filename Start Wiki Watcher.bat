@echo off
echo Starting Wiki Auto-Push Watcher...
powershell -ExecutionPolicy Bypass -File "%~dp0autopush.ps1"
pause
