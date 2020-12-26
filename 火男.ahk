#InstallKeybdHook
#InstallMouseHook

capslock::return

^+s::suspend
^+r::reload


~z::
send ^q
return

~x::
send ^w
return

~c::
send ^e
return

~v::
send ^r
return

~t::
send 4
return

~a::
send {LButton}
return


~space::
send 2
sleep 10
send !2
sleep 10
send 3
;sleep 10
;send {f1 down}
;sleep 1000
;send {f1 up}
return


~w::
;sleep 100
;send q
return 

~e::
send q
return 


~r::
;send {LButton}
send q
return

XButton1::
send w
send q
return 
