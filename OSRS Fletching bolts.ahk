#Persistent
running := false


; Start in edge bank closest to furnace
; Face north, max zoom out, runlite sidebar open, pan up
b::
    running := true
    Loop, 100000
    {
        if (!running)
            break
        CoordMode, Mouse, Screen
	Click, Left, 1370, 670
        Random, delay, 20, 61
        Click, Left, 1420, 670
        Random, delay, 20, 58
    }
    running := false
return

s::running := false