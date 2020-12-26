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
return

;q,e 1150 e无法刷新



~w::
return


~e::
;send {RButton}
;sleep 50 
send a
send {LButton}
return

;XButton1::
;send w
;send q
;return 

~r::
sleep 200
send e
;send {RButton}
send a
send {LButton}
return
