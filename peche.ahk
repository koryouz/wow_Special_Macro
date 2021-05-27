#NoEnv
#SingleInstance force


NumpadMult::
{
MsgBox,  %relogNumb% relog / %crashNumb% crash
pause
}
return

F7::
{
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 C:\Program Files (x86)\World of Warcraft\_retail_\macro\error.PNG
		if (ErrorLevel = 0)
		{
		Process, Close, BizzardError.exe
		Process, Close, Wow.exe
		WinClose, World of Warcraft
		MouseMove, -150, 0, 2, R
		}
}
return

F8::
{
crashNumb = 0
relogNumb = 0
x=0
y=0
z=0
l=0
relog=10
crash=0

MouseMove, -150, 0, 2, R
sleep 240
MouseMove, 0, 18, 2, R
sleep 240
loop
 {
  
	if (x>=10) 
	{
	MouseMove, -300, 0, 2, R
	x=0
	y++
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 C:\Program Files (x86)\World of Warcraft\_retail_\macro\ok.PNG
		if (ErrorLevel = 0)
		{
		y=20
		}
	}
	
     if (y>=20)
     {
     sleep 48
     send {è}
     y=0
	 z++
	 relog++
	 crash++
	 l++
	 m++
     }
	 
	 
	  if (z>=10) 
     {
     sleep 48
     send {_}
     sleep 2000
     z=0
     }
	 
	 	  if (l>=90) 
     {
     sleep 48
     send {ç}
     sleep 2000
     l=0
     }
	 
		if (relog>=15) 
     {
	relog=0
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *10 C:\Program Files (x86)\World of Warcraft\_retail_\macro\Co.PNG
		if (ErrorLevel = 0)
		{
		send {Enter} 
		sleep 500
		send {Enter}
		sleep 5000
		send {Enter}
		sleep 500
				
		send {LControl down}
		sleep 100
		send {a}
		sleep 100
		send {LControl up}{Delete}
		sleep 500
		
		/// "SEND YOUR PASSWORD HERE" ///
		sleep 1000
		send {Enter}
		
		sleep 45000
		send {Enter}
		
		sleep 45000
		send {Enter}
		sleep 2000
		send {Enter}
		sleep 2000
		send {Numpad7}
		sleep 5000
		y=0
		relogNumb++
		}
     }
	 
	 if (crash>==15) 
     {
	 crash=0
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 C:\Program Files (x86)\World of Warcraft\_retail_\macro\error.PNG
		if (ErrorLevel = 0)
		{
		Process, Close, BizzardError.exe
		sleep 2000
		Process, Close, Wow.exe
		sleep 2000
		WinClose, World of Warcraft
		sleep 2000
		Run, wow.exe, C:\Program Files (x86)\World of Warcraft\_retail_, max
		sleep 15000
		relog=14
		crashNumb++
		}
	 }

MouseMove, 30, 0, 2, R
Click
x++
 }
}
return
