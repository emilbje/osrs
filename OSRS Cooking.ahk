#Persistent
running := false

b::
    running := true
    Loop, 1000
    {
        if (!running)
            break
        CoordMode, Mouse, Screen
        Click, Left, 780, 750
        Sleep, 1000
        Click, Left, 1420, 670
        Sleep, 400
        Click, Left, 860, 147
        Sleep, 400
        Click, Left, 935, 55
        Sleep, 800
        Click, Left, 1420, 670
        Sleep, 300
	Click, Left, 1030, 580
        Sleep, 800
        Send, {Space}
        Sleep, 1500
    }
    running := false
return

s::running := false