#Persistent
running := false

; Start in edge bank closest to furnace
; Face north, max zoom out, runlite sidebar open, pan up
b::
    running := true
    while (running)
    {
        Loop, 7
        {
            if (!running)
                break
            CoordMode, Mouse, Screen
            Click, Left, 718, 580
            Random, delay, 2300, 2500
            Sleep, delay
            Click, Left, 755, 500
            Random, delay, 2000, 2200
            Sleep, delay
	    Click, Left, 755, 495
            Random, delay, 2000, 2200
            Sleep, delay
            Click, Left, 815, 500
            Random, delay, 2200, 2400
            Sleep, delay
        }

        ; Begin table clicking
        if (running)
        {
            ; Starting coordinates
            startX := 1370
            startY := 670

            ; Loop through rows
            Loop, 7
            {
                ; Calculate Y coordinate for the current row
                currentY := startY + (A_Index - 1) * 46

                ; Loop through columns
                Loop, 4
                {
                    ; Calculate X coordinate for the current column
                    currentX := startX + (A_Index - 1) * 54

                    ; Move the mouse to the calculated position
                    MouseMove, currentX, currentY, 0

                    ; Left click
                    Click, Left
                    Random, delay, 40, 70
                    Sleep, delay
                }
            }
        }
    }
    running := false
return

s::running := false
