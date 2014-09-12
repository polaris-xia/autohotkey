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
!k::SendPlay {Down}
!l::SendPlay {Right}
!i::SendPlay {Up}
!,::SendPlay {PgUp}
!.::SendPlay {PgDn}
!u::
if winApp()
{
	SendPlay ^{Left}
} else {
	SendPlay !b
}
Return

!o::
if winApp()
{
	SendPlay ^{Right}
} else {
	SendPlay !f
}
Return

!h::
if winApp()
{
	SendPlay {Home}
} else {
	SendPlay ^a^a
}
Return

!'::
if winApp()
{
	SendPlay {End}
} else
{
	SendPlay ^e
}
Return

!7::SendPlay {BS}
!9::SendPlay {Del}
!y::
if winApp()
{
	SendPlay ^{BS}
} else
{
	SendPlay !{BS}
}
Return

!p::
if winApp()
{
	SendPlay ^{Del}
} else
{
	SendPlay !d
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
	SendPlay !n
}
Return

!m::
if winApp()
{
	SendPlay ^{Tab}
} else
{
	SendPlay !m
}
Return

![::SendPlay ^ap
!]::SendPlay ^an

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
^;::F5