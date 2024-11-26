#Persistent
toggle := false

SetTimer, RandomClick, Off

RandomClick:
    if (toggle) {
        Random, delay, 850, 1623
        Sleep, delay
        Click, Left, 789, 503
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

