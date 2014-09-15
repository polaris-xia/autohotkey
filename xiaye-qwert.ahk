#KeyHistory 500

;SetKeyDelay 0, 0

SetTitleMatchMode, 2

winApp()
{
	if WinActive("sh-")
	{
		return false
	} else if WinActive("VNC")
	{
		return false
	}
	return true
}

!j::SendPlay {Left}
!K::SendPlay {Down}
!l::SendPlay {Right}
!i::SendPlay {Up}

;; Move backward word
!u::
if winApp()
{
	SendPlay ^{Left}
} else {
	SendPlay !b
}
Return
!b::
if winApp()
{
	SendPlay ^{Left}
}
Return

;; Move forward word
!o::
if winApp()
{
	SendPlay ^{Right}
} else {
	SendPlay !f
}
Return
!f::
if winApp()
{
	SendPlay ^{Right}
}
Return

;; Move to beginning of line
!h::
if winApp()
{
	SendPlay {Home}
} else {
	SendPlay ^a^a
}
Return
^a::
if winApp()
{
	SendPlay {Home}
}
Return

;; Move to end of line
!'::
if winApp()
{
	SendPlay {End}
} else
{
	SendPlay ^e
}
Return
^e::
if winApp()
{
	SendPlay {End}
}
Return

!7::SendPlay {BS}
!9::SendPlay {Del}

;; Backward delete word
!e::
if winApp()
{
	SendPlay ^{BS}
} else
{
	SendPlay !{BS}
}
Return
!BS::
if winApp()
{
	SendPlay ^{BS}
}
Return

;; Forward delete word
!d::
if winApp()
{
	SendPlay ^{Del}
}
Return

!0::
if winApp()
{
	SendPlay +{End}{Del}
} else
{
	SendPlay ^k
}
Return

!6::
if winApp()
{
	SendPlay +{Home}{Del}
} else
{
	SendPlay ^u
}
Return

!n::
if winApp()
{
	SendPlay ^+{Tab}
} else
{
	SendPlay ^ap
}
Return

!m::
if winApp()
{
	SendPlay ^{Tab}
} else
{
	SendPlay ^an
}
Return

Alt & Space::SendPlay ^@
AppsKey & n::WinActivate, VNC Viewer
AppsKey & p::WinActivate, PuTTY

^g::
if winApp()
{
	SendPlay {Escape}
} else {
	SendPlay ^g
}
Return

^l::Reload

^1::
if GetKeyState("CapsLock", "T") = 1
{
    SetCapsLockState, off
}
else if GetKeyState("CapsLock", "T") = 0
{
    SetCapsLockState, on 
}
Return

#z::SendPlay ^z
#x::SendPlay ^x
#c::SendPlay ^c
#v::SendPlay ^v
#a::SendPlay ^a
#s::SendPlay ^s
#w::SendPlay ^w
#f::SendPlay ^f

#Space::SendPlay ^{Space}