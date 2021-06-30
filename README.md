# keepass-attempter
Isn't it so tiring having to remember one entire master password to your keepass file? 
If only we could store our master passwords inside our keepass databases. Then we wouldn't even have to remember the master password! 
Well with the Keepass forgotten password attempter, now you don't even need a password! Just give it a dictionary, and watch it spin for hours as it attempts every combination you provided. Hopefully you unlock your database soon

### Please read included licence agreement.

### For use on databases only with expressed permission by the database owner.

## Requirements
- Windows Powershell
- KeePass.exe
- KPScript.exe plugin for KeePass

## Caveats
This was efficient to write - not the best code. 
I hold no responsibility for bugs or lack of functionality.
Please use and make changes as needed.

## Suggested use
I have found this tool to be effective when knowing the password is likely to be one of a set list of passwords. 
Predefining a list or writing some logic elsewhere to generate your list of words is recommended but the generation of words is not functionality this tool provides.

# Setup
- Install latest Keepass 2.x
- Install KPScript.exe plugin (https://keepass.info/plugins.html)
- See ExecuteKeepassTest.Template.ps1 for execution
`.\CheckKeepassPassword.ps1 "C:\Program Files\KeePass Password Safe 2\KPScript.exe" "C:\mydatabase.kdbx" @('password', 'password1')`
- Logic is in CheckKeepassPassword.ps1

# Future enhancements
- File input for password list
- Better handling of sad path responses from KPScript.exe
- Better responses from CheckKeepassPassword.ps1
- Simple password generation (Taking a seed dictionary and carrying out common alterations e.g. replacing 'i' with '1')
