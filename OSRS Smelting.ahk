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
	Click, Left, 1370, 670
        Sleep, 400
	Send, {Shift down}
        Click, Left, 860, 150
	Send, {Shift up}
        Sleep, 400
        Click, Left, 800, 150
        Sleep, 400
        Click, Left, 1150, 380
        Sleep, 6000
        Send, {Space}
        Sleep, 3500
	Click, Left, 380, 735
	Sleep, 6000
    }
    running := false
return

s::running := false