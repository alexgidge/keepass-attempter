
    param (
		[Parameter(Mandatory)] [string] $KPSExePath,
		[Parameter(Mandatory)] [string] $KeepassDatabasePath,
		[Parameter()] [String[]] $WordsToAttempt,
		[Parameter()] [string] $KeyFilePath
    )

	write-host "------- Starting Password Check -------"
	write-host "..."

	$Count = 0

	while($Count -le $WordsToAttempt.Length){

		$nextWordToAttempt = $WordsToAttempt[$Count]

		$KPSCommands = @(
			"-c:GetEntryString"
			"""$KeepassDatabasePath"""
			"-pw:""$nextWordToAttempt"""
			"-Field:Password"
			"-FailIfNotExists"
			if($null -ne $KeyFilePath -and $KeyFilePath -ne "") {
				"-keyfile:""$KeyFilePath"""
			}
		)
		
		$KPSReturnValue = & $KPSExePath $KPSCommands
		if(!$KPSReturnValue)
		{
			write-host "..."
			write-host "ERROR: No return value from script" -ForegroundColor Red
			break
		}
		elseif($KPSReturnValue[0] -match "^E: The master key is invalid!$"){
			#Only write to log every x attempts so it doesn't clutter
			if($Count % 10 -eq 0)
			{
				write-host "... $Count words attempted" 
			}
		}
		elseif ($KPSReturnValue -match "OK: Operation completed successfully.") {
			write-host "..." -ForegroundColor DarkGreen
			write-host "--PASSWORD MATCH--" -ForegroundColor DarkGreen
			write-host "Password was index #" $Count " - " $nextWordToAttempt -ForegroundColor DarkGreen
			return $nextWorkToAttempt
		}
		else {
			write-host "..."
			write-host "ERROR: Unknown result from script" -ForegroundColor Red
			break
		}

		$Count++
	}

	write-host "Finished unsuccesfully." -ForegroundColor Red
	return 0

