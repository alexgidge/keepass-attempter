# keepass-attempter

Isn't it so tiring having to remember one entire master password to your keepass file?

Well with the Keepass forgotten password attempter, now you don't even need a password!

Just give it a list of words, and watch it spin for hours as it attempts every combination you provided. 

I Hope you unlock your database soon

## Summary

This tool can be used to brute force a list of known passwords (Key files also supported) against a Keepass database. 

I have found this tool to be effective when knowing a list of possible passwords beforehand.

This tool has few dependencies and requires little technical ability without the need to download any application or hash cracking tools

Predefining a list or writing some logic elsewhere to generate your list of words is recommended but the generation of words is not functionality this tool provides.

## Alternatives
- John-the-ripper and Hashcat (Full functionality tools)
- Try to remember the password 

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


# Setup
- Install latest Keepass 2.x
- Install KPScript.exe plugin (https://keepass.info/plugins.html)

# Usage
`.\CheckKeepassPassword.ps1 "C:\Program Files\KeePass Password Safe 2\KPScript.exe" "C:\mydatabase.kdbx" @('password', 'password1')`
or for password and key file combinations:
`.\CheckKeepassPassword.ps1 "C:\Program Files\KeePass Password Safe 2\KPScript.exe" "C:\mydatabase.kdbx" @('password', 'password1') "C:\MyKeyFile.Key"`
- See ExecuteKeepassTest.Template.ps1 for template powershell execution script

# Future enhancements
- File input for password list
- Better handling of sad path responses from KPScript.exe
- Better responses from CheckKeepassPassword.ps1
- Simple password generation (Taking a seed dictionary and carrying out common alterations e.g. replacing 'i' with '1')
