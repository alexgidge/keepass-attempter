$KeepassExe = "C:\Program Files\KeePass Password Safe 2\KPScript.exe"
$DatabaseFile = "C:\mydatabase2.kdbx"
$Keyfile = "C:\Keys\keyfile.key" #KeyFile optional
$Passwords = @(
    'password'
    'password1'   
    )

.\CheckKeepassPassword.ps1 $KeepassExe $DatabaseFile $Passwords $Keyfile 

