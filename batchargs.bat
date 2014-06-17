@rem Replace __ with = in batch files.
@rem This works around the lack of equals signs in args
@rem args contains full args string with substitutions in place

setlocal enabledelayedexpansion

:argloop
if "%~1" NEQ "" (
			
	set str=%~1
	set out=!str:__==!
	set %~1=!out!
	set args=!args!!out! 
	
	SHIFT
	goto :argloop
)

@rem Can now run program on a line on its own with just %args%
