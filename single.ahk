; disable cap
CapsLock::
return

; map del to cap
Delete::CapsLock

CapsLock & Space::
    Send, {Escape}
return

;; <<<<
;; movement
CapsLock & h::
if GetKeyState("alt") = 0 {
    Send, {Left}
} else {
    Send, ^{Left}
}
return
 
CapsLock & l::
if GetKeyState("alt") = 0 {
    Send, {Right}
} else {
    Send, ^{Right}
}
return

CapsLock & j::
    Send, {Down}
return

CapsLock & k::
    Send, {Up}
return

CapsLock & i::
    Send, {End}
return

CapsLock & u::
    Send, {Home}
return
;; <<<<


;; >>>> 
;; always top

CapsLock & LButton::
    Winset, Alwaysontop, On, A
return

CapsLock & RButton::
    Winset, Alwaysontop, Off, A
return
;; <<<<


;; >>>>
;; opacity

; turn off/on opacity
CapsLock & MButton::
WinGet, tran, Transparent, A
if (tran > 0) {
    WinSet, Transparent, OFF, A
} else {
    WinSet, Transparent, 150, A
}
return

; Increase opacity
CapsLock & WheelUp::
    DetectHiddenWindows, on
    WinGet, curtrans, Transparent, A
    if ! curtrans
        curtrans = 255
    newtrans := curtrans + 8
    if newtrans > 0 
    {
        WinSet, Transparent, %newtrans%, A
    } 
    else 
    {
        WinSet, Transparent, OFF, A
        WinSet, Transparent, 255, A
    }
return

; Decrease opacity
CapsLock & WheelDown::
    DetectHiddenWindows, on
    WinGet, curtrans, Transparent, A
    if ! curtrans
        curtrans = 255
    newtrans := curtrans - 8
    if newtrans > 0 
    {
        WinSet, Transparent, %newtrans%, A
    }
return
;; <<<<
