#Persistent
running := false

; Start in edge bank closest to furnace
; Face north, max zoom out, runlite sidebar open, pan up
b::
    running := true
    while (running)
    {
        Loop, 9
        {
            if (!running)
                break
            CoordMode, Mouse, Screen
            Click, Left, 800, 400
            Random, delay, 1100, 1200
            Sleep, delay
            Click, Left, 1000, 560
            Random, delay, 1100, 1200
            Sleep, delay
            Click, Left, 790, 760
            Random, delay, 4200, 4500
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
                    Random, delay, 120, 180
                    Sleep, delay
                }
            }
        }
    }
    running := false
return

s::running := false

