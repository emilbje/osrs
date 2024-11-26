#Persistent
toggle := false

SetTimer, RandomClick, Off

RandomClick:
    if (toggle) {
        Random, delay, 550, 620
        Sleep, delay
        Click
    }
return

a::
    toggle := true
    SetTimer, RandomClick, 10
return

s::
    toggle := false
    SetTimer, RandomClick, Off
return

