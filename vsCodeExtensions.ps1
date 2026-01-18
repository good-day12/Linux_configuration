code --install-extension ms-vscode.Powershell;
code --install-extension vscodevim.vim;
code --install-extension robbowen.synthwave-vscode;
code --install-extension timonwong.shellcheck;
code --install-extension ms-python.python;
code --install-extension ms-python.black-formatter;

# path to settings.json: C:\Users\andre.g.flores\AppData\Roaming\Code\User\settings.json
Set-Content -Path "C:\Users\andre.g.flores\AppData\Roaming\Code\User\settings.json" -Value (Get-Content -Path "\\ucfgllccfs01\DEMRedirect\andre.g.flores\Documents\phase 2\vsCodeSettings.json")