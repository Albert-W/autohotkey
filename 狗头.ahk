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

XButton1::
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
send {RButton}
sleep 1000 
send a
send {LButton}
return



; q, RButton没有冲突
; RButton,a 需要间隔300
; a Lbutton 需要同时出现