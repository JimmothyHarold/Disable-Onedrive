new-item -path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" -Force

new-itemproperty -path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Value 1 -PropertyType DWord -force

start-process -filepath "C:\Windows\System32\onedrivesetup.exe" -ArgumentList "/uninstall"

