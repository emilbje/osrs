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
	Click, Left, 1660, 620
       	Sleep, 200
        Click, Left, 1540, 620
        Sleep, 1500
	Click, Left, 1540, 620
	Sleep, 1500
    }
    running := false
return

s::running := false