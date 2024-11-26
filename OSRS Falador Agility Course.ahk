#Persistent
running := false


; Start in edge bank closest to furnace
; Face north, max zoom out, runlite sidebar open, pan up
b::
    running := true
    Loop, 1000
    {
        if (!running)
            break
        CoordMode, Mouse, Screen
	Click, Left, 913, 490
        Sleep, 8000
        Click, Left, 870, 330
        Sleep, 10500
        Click, Left, 725, 465
        Sleep, 3000
        Click, Left, 660, 500
        Sleep, 4000
	Click, Left, 570, 500
	Sleep, 8999
	Click, Left, 720, 550
	Sleep, 5000
	Click, Left, 690, 533
	Sleep, 3000
	Click, Left, 700, 630
	Sleep, 3000
	Click, Left, 730, 600
	Sleep, 4000
	Click, Left, 820, 760
	Sleep, 5000
	Click, Left, 850, 530
	Sleep, 4000
	Click, Left, 920, 540
	Sleep, 5000
	Click, Left, 980, 320
	Sleep, 6000
    }
    running := false
return

s::running := false