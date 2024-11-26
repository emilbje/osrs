#Persistent
toggle := false

SetTimer, RandomClick, Off

RandomClick:
    if (toggle) {
        Random, delay, 15, 40
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

