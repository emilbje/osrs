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
        Click, Left, 860, 150
        Sleep, 400
        Click, Left, 900, 900
        Sleep, 5000
        Click, Left, 860, 290
        Sleep, 3500
	Click, Left, 730, 290
	Sleep, 5000
    }
    running := false
return

s::running := false