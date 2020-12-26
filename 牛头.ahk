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


~q::
send a
send {LButton}
return

~w::
return


~e::
send a
send {LButton}
return

XButton1::
send w
send q
return 