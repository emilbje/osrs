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
       	Sleep, 200
        Click, Left, 1420, 670
        Sleep, 800
	Send, {Space}
	Sleep, 13000
    }
    running := false
return

s::running := false