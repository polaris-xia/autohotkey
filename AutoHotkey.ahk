; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

;#z::Run www.autohotkey.com

;^!n::
;IfWinExist Untitled - Notepad
;	WinActivate
;else
;	Run Notepad
;return


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.


; AppsKey + jkl

SetTitleMatchMode, 2

#IfWinActive, VNC Viewer
{
AppsKey & 8::Send {Blind}{Left Down}
AppsKey & 8 up:: Send {Blind}{Left Up}
}
#ifWinActive

AppsKey & j::Send {Blind}{Left Down}
AppsKey & j up::Send {Blind}{Left Up}

AppsKey & k::Send {Blind}{Down Down}
AppsKey & k up::Send {Blind}{Down Up}
   
AppsKey & l::Send {Blind}{Right Down}
AppsKey & l up::Send {Blind}{Right Up}

AppsKey & i::Send {Blind}{Up Down}
AppsKey & i up::Send {Blind}{Up Up}


AppsKey & u::Send {Control Down}{Left Down}
AppsKey & u up::Send {Control Up}{Left Up}

AppsKey & >::Send {Control Down}{Down Down}
AppsKey & > up::Send {Control Up}{Down Up}
   
AppsKey & o::Send {Control Down}{Right Down}
AppsKey & o up::Send {Control Up}{Right Up}

AppsKey & <::Send {Control Down}{Up Down}
AppsKey & < up::Send {Control Up}{Up Up}


AppsKey & p::SendInput {Blind}{PgUp Down}
AppsKey & p up::SendInput {Blind}{PgUp Up}

AppsKey & n::SendInput {Blind}{PgDn Down}
AppsKey & n up::SendInput {Blind}{PgDn Up}

AppsKey & h::SendInput {Blind}{Home Down}
AppsKey & h up::SendInput {Blind}{Home Up}

AppsKey & '::SendInput {Blind}{End Down}
AppsKey & ' up::SendInput {Blind}{End Up}

AppsKey & [::Send {Control Down}{Home Down}
AppsKey & [ up::Send {Control Up}{Home Up}

AppsKey & ]::Send {Control Down}{End Down}
AppsKey & ] up::Send {Control Up}{End Up}


AppsKey & `;::SendInput {Delete}

AppsKey & SPACE::SendInput {Alt Down}{SPACE Down}
AppsKey & SPACE up::SendInput {Alt Up}{SPACE Up}

#ifWinActive, VNC Viewer
{
AppsKey & BS::SendInput {Alt Down}{BS Down}
AppsKey & BS up::SendInput {Alt Up}{BS Up}
}
#ifWinActive
#ifWinNotActive, VNC Viewer
{
AppsKey & BS::SendInput {Control Down}{BS Down}
AppsKey & BS up::SendInput {Control Up}{BS Up}
}
#ifWinNotActive

#ifWinActive, VNC Viewer
{
AppsKey & m::SendInput {Alt Down}{d Down}
AppsKey & m up::SendInput {Alt Up}{d Up}
}
#ifWinActive
#ifWinNotActive, VNC Viewer
{
AppsKey & m::SendInput {Control Down}{Delete Down}
AppsKey & m up::SendInput {Control Up}{Delete Up}
}
#ifWinNotActive

AppsKey & y::SendInput {Control Down}{Shift Down}{BS Down}
AppsKey & y up::SendInput {Control Up}{Shift Up}{BS Up}

#ifWinActive, VNC Viewer
{
AppsKey & \::SendInput {Control Down}{k Down}
AppsKey & \ up::SendInput {Control Up}{k Up}
}
#ifWinActive
#ifWinNotActive, VNC Viewer
{
AppsKey & \::SendInput {Control Down}{Shift Down}{Delete Down}
AppsKey & \ up::SendInput {Control Up}{Shift Up}{Delete Up}
}
#ifWinNotActive

Alt & u::WinMove, ¿Í»§¶Ë, , 900, 200
AppsKey & /::SendInput {Esc}

; AppsKey + asdf
#IfWinActive, VNC Viewer
{
Alt & j::SendInput {Control Down}{b Down}
Alt & j up::SendInput {Control Up}{b Up}
Alt & k::SendInput {Control Down}{n Down}
Alt & k up::SendInput {Control Up}{n Up}
Alt & l::SendInput {Control Down}{f Down}
Alt & l up::SendInput {Control Up}{f Up}
Alt & i::SendInput {Control Down}{p Down}
Alt & i up::SendInput {Control Up}{p Up}

Alt & u::SendInput {Alt Down}{b Down}
Alt & u up::SendInput {Alt Up}{b Up}
Alt & o::SendInput {Alt Down}{f Down}
Alt & o up::SendInput {Alt Up}{f Up}
Alt & h::SendInput {Control Down}{a Down}
Alt & h up::SendInput {Control Up}{a Up}{Control Down}{a Down}{Control Up}{a Up}
Alt & '::SendInput {Control Down}{e Down}
Alt & ' up::SendInput {Control Up}{e Up}

Alt & m::SendInput {Alt Down}{d Down}
Alt & m up::SendInput {Alt Up}{d Up}
Alt & /::SendInput {Del Down}
Alt & / up::SendInput {Del Up}

Alt & a::SendInput {Control Down}{/ Down}
Alt & a up::SendInput {Control Up}{/ Up}
}
#IfWinActive


#IfWinActive, sh-
{
Alt & j::SendInput {Control Down}{b Down}
Alt & j up::SendInput {Control Up}{b Up}
Alt & k::SendInput {Control Down}{n Down}
Alt & k up::SendInput {Control Up}{n Up}
Alt & l::SendInput {Control Down}{f Down}
Alt & l up::SendInput {Control Up}{f Up}
Alt & i::SendInput {Control Down}{p Down}
Alt & i up::SendInput {Control Up}{p Up}

Alt & u::SendInput {Alt Down}{b Down}
Alt & u up::SendInput {Alt Up}{b Up}
Alt & o::SendInput {Alt Down}{f Down}
Alt & o up::SendInput {Alt Up}{f Up}
Alt & h::SendInput {Control Down}{a Down}
Alt & h up::SendInput {Control Up}{a Up}{Control Down}{a Down}{Control Up}{a Up}
Alt & '::SendInput {Control Down}{e Down}
Alt & ' up::SendInput {Control Up}{e Up}

Alt & m::SendInput {Alt Down}{d Down}
Alt & m up::SendInput {Alt Up}{d Up}
Alt & /::SendInput {Del Down}
Alt & / up::SendInput {Del Up}

Alt & a::SendInput {Control Down}{/ Down}
Alt & a up::SendInput {Control Up}{/ Up}
}
#IfWinActive



Alt & j::SendInput {Control Down}{b Down}
Alt & j up::SendInput {Control Up}{b Up}
Alt & k::SendInput {Control Down}{n Down}
Alt & k up::SendInput {Control Up}{n Up}
Alt & l::SendInput {Control Down}{f Down}
Alt & l up::SendInput {Control Up}{f Up}
Alt & i::SendInput {Control Down}{p Down}
Alt & i up::SendInput {Control Up}{p Up}

Alt & u::SendInput {Alt Down}{b Down}
Alt & u up::SendInput {Alt Up}{b Up}
Alt & o::SendInput {Alt Down}{f Down}
Alt & o up::SendInput {Alt Up}{f Up}
Alt & h::SendInput {Control Down}{a Down}
Alt & h up::SendInput {Control Up}{a Up}{Control Down}{a Down}{Control Up}{a Up}
Alt & '::SendInput {Control Down}{e Down}
Alt & ' up::SendInput {Control Up}{e Up}

Alt & m::SendInput {Alt Down}{d Down}
Alt & m up::SendInput {Alt Up}{d Up}
Alt & /::SendInput {Del Down}
Alt & / up::SendInput {Del Up}

Alt & a::SendInput {Control Down}{/ Down}
Alt & a up::SendInput {Control Up}{/ Up}



AppsKey & a::SendInput {Ctrl Down}{a Down}
AppsKey & a up::SendInput {Ctrl Up}{a Up}

AppsKey & s::SendInput {Ctrl Down}{x Down}
AppsKey & s up::SendInput {Ctrl Up}{x Up}

AppsKey & d::SendInput {Ctrl Down}{c Down}
AppsKey & d up::SendInput {Ctrl Up}{c Up}

AppsKey & f::SendInput {Ctrl Down}{v Down}
AppsKey & f up::SendInput {Ctrl Up}{v Up}
			
AppsKey::SendInput {AppsKey Down}
AppsKey up::SendInput {AppsKey Up}


; AppsKey + dbwer

;AppsKey & h::SendInput {Blind}{Del Down}
AppsKey & w::SendInput {Ctrl down}{F4}{Ctrl up}
AppsKey & e::SendInput {Alt down}{F4}{Alt up}

;AppsKey & n::SendInput {Blind}{BS Down}
;AppsKey & BS::SendInput {Blind}{BS Down}
AppsKey & r::SendInput {Blind}{Esc Down}

; Make AppsKey & Enter equivalent to Control+Enter
AppsKey & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}

; Make AppsKey & Alt Equivalent to Control+Alt
!AppsKey::SendInput {Ctrl down}{Alt Down}
!AppsKey up::SendInput {Ctrl up}{Alt up}

; Make Windows Key + Apps Key work like Caps Lock
#AppsKey::Capslock