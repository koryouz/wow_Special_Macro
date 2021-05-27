#NoEnv
#SingleInstance force
SetBatchLines -1

NumpadMult::pause


<!~Tab::
{
pause, On
}
return



~XButton1::
{
	if (A_IsPaused)
	{
	WinGetTitle, title, A
	if (title = "World of Warcraft")
		{
		pause, Off
		}	
	}
send {NumpadSub}
}
return

~XButton2::
{
	if (A_IsPaused)
	{
	WinGetTitle, title, A
	if (title = "World of Warcraft")
		{
		pause, Off
		}	
	}
send {Numpad8}
}
return

~MButton::
{
	if (A_IsPaused)
	{
	WinGetTitle, title, A
	if (title = "World of Warcraft")
		{
		pause, Off
		}	
	}
if (A_IsPaused)
	{
	}
else
	{
send {Numpad5}
	}
}
return