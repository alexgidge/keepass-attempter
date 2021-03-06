# keepass-attempter

Isn't it so tiring having to remember one entire master password to your keepass file?

Well with the Keepass forgotten password attempter, now you don't even need to be that accurate!

Just give it a list of words that you think the password could be, and watch it spin for hours as it attempts every combination you provided. 

I Hope you unlock your database soon.

Please read agreement.

For use on databases only with expressed permission by the database owner. I take no responsibility for your usage of this tool.

## Summary

This tool can be used automate typing in a list of known passwords (Key files also supported) against a Keepass database. 

Manual typing into the KeePass master password dialogue box can be time consuming due to processing time & every 5 attempts users must manually reselect the database file.

I have found this tool to be effective when knowing a list of possible passwords beforehand. It will act as negative confirmation for the list of passwords. Even if you think it's a long shot - I would recommend trying this method or manual typing with a list of your common passwords.

Predefining a list or writing some logic elsewhere to generate your list of words is recommended but the generation of words is not functionality this tool provides.

## Alternatives

- John-the-ripper and Hashcat (Full functionality cracking/brute forcing tools)
- Try to remember the password
- Any other suggestions?

## Requirements

- Windows Powershell
- KeePass.exe
- KPScript.exe plugin for KeePass
- A list of possible passwords

## Caveats

This was fast to write - not the best script. 
I hold no responsibility for bugs or lack of functionality.
Please use and make changes as needed.

## Setup

- Install latest Keepass 2.x
- Install KPScript.exe plugin (https://keepass.info/plugins.html)

## Usage

For passwords:

`.\CheckKeepassPassword.ps1 "C:\Program Files\KeePass Password Safe 2\KPScript.exe" "C:\mydatabase.kdbx" @('password', 'password1')`

For password and key file combinations:

`.\CheckKeepassPassword.ps1 "C:\Program Files\KeePass Password Safe 2\KPScript.exe" "C:\mydatabase.kdbx" @('password', 'password1') "C:\MyKeyFile.Key"`

See ExecuteKeepassTest.Template.ps1 for longer template powershell execution script

## Future enhancements

- File input for password list
- Better handling of sad path responses from KPScript.exe
- Better responses from CheckKeepassPassword.ps1
- Simple password generation (Taking a seed dictionary and carrying out common alterations e.g. replacing 'i' with '1')

## Suggestions

If you have any suggestions, please raise an issue in github and feel free to fork
