$KeepassExe = "C:\Program Files\KeePass Password Safe 2\KPScript.exe"
$DatabaseFile = "C:\mydatabase2.kdbx"
$Keyfile = "C:\Keys\keyfile.key"
$Passwords = @(
    'password'
    'password1'   
    )

CheckKeepassPassword $KeepassExe $DatabaseFile $Passwords $Keyfile


$KeepassExe = "C:\Program Files\KeePass Password Safe 2\KPScript.exe"
$DatabaseFile = "C:\mydatabase.kdbx"
$Passwords = @(
    'password'
    'password1'   
    )

CheckKeepassPassword $KeepassExe $DatabaseFile $Passwords