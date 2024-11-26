#Persistent
running := false


; Stand in Mor Ul Ek bank
; Face west

b::
    running := true
    Loop, 1000
    {
        if (!running)
            break
        CoordMode, Mouse, Screen
        Click, Right, 780, 810
        Sleep, 200
        Click, Left, 780, 880
        Sleep, 800
        Send, 3
	Sleep, 1300
        Click, Right, 780, 810
        Sleep, 200
        Click, Left, 780, 900
        Sleep, 800
	Send, 1
	Sleep, 1200
    }
    running := false
return

s::running := false