# keepass-attempter
Powershell script to attempt a list of passwords (plus optional key file) to open a database
This was efficient to write - not the best code. 
I hold no responsibility for bugs or lack of functionality. 
Please use and make changes as needed

# Setup

- Install latest Keepass 2.x
- Install KPScript.exe plugin (https://keepass.info/plugins.html)
- See ExecuteKeepassTest.Template.ps1 for execution
`CheckKeepassPassword "C:\Program Files\KeePass Password Safe 2\KPScript.exe" "C:\mydatabase.kdbx" @('password', 'password1') "C:\Keys\keyfile.key"`

## Future enhancements
- File input for password list
- Better handling of sad path responses from Keepass
