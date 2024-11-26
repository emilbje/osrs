macro_on := 0
return

6::
	macro_on := !macro_on
	if (macro_on)
		Send {Space Down}
	else
		Send {Space Up}
	return

~+::
Suspend
Return
