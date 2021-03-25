#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; tutorial of onExit: https://www.autohotkey.com/docs/commands/OnExit.htm#function
#Persistent  ; Prevent the script from exiting automatically.
OnExit("ResumeFunc")

; show be in front of shortcuts
ResumeFunc()
{
    ;iterate all windows
    WinGet, Windows, List
    Loop, %Windows%
    {
        this_id := "ahk_id " . Windows%A_Index%
        ; exclude the Title and text which is ""
        ; otherwise the thread will get block. 
        ; WinSet, Alwaysontop, off, %this_id%
        ; WinSet, Transparent, 255, %this_id%, "" , "" 
        WinGetTitle, this_title, %this_id%
        ; WinGetText, this_text, WinTitle, WinText, ExcludeTitle, ExcludeText]
        ; MsgBox %this_title%
        if (this_title = "Always On Top")
        {
            ; MsgBox "Hello"
            ; WinSet, Alwaysontop, off, %this_title%
            WinSet, Alwaysontop, off, %this_id%
            WinSetTitle, %this_id%, , Back to Normal 
        }
        ; WinSetTitle, %this_id%, , 
        ; MsgBox %this_title%
    }
}


; toggle on or off; A (active window)
; WinSet, Alwaysontop, toggle, A 
#A::  
if (isWindowOnTop()) 
{
    WinSet, Alwaysontop, off, A
    WinSetTitle, A, , Back to Normal  
} Else 
{
    WinSet, Alwaysontop, on, A
    WinSetTitle, A, , Always On Top 
}
return

; clear all status
#C::
    ResumeFunc()
    ; boolean := isWindowOnTop()
    ; MsgBox %boolean%
return    

isWindowOnTop()
{
    WinGet, styleVar, ExStyle, A
    boolean := styleVar & 0x8
    return %boolean%
    ; If (styleVar & 0x8) ; 0x8 is WS_EX_TOPMOST.
    ;     ;the window is always-on-top, so perform appropriate action.
    ;     return True
    ; Else
    ;     return False    
}
