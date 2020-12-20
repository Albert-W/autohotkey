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
send w
sleep 250
send a
send {LButton}
return


;100 无法释放q,q被a重置
;200 q不会被a重置，但没有富裕空间

~w::
;send q 
;sleep 150
;send w
return 
; w 不会被q重置
; 2个w之间需要间隔150

~e::
send w
return

~r::
send w
sleep 500
send w
send q
return

;r，w之间不会冲突
;r与q之间如果只有300容易被q重置
;r，q之间只有350， r之后无q 
;r, q之间只有450， 没有容错空间

;~d::
;sleep 220
;send q
;return

;~e::
;sleep 10
;send {f1 down}
;sleep 1000
;send {f1 up}
;return

;~e::
;sleep 10
;send 3
;sleep 10
;loop 5
;{
;send {RButton}
;sleep 600
;}
;send a{LButton}
;return

;*A::
;send !{Lbutton}
;return

;~Lbutton::
;GetKeyState, state, w
;if state = D
;{
;    sleep 10
;    send q
;    sleep 300
;    send e
;}
;else
;    return

;https://lol.qq.com/data/info-defail.shtml?id=143