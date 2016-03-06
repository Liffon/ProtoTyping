#Persistent
SetCapsLockState, AlwaysOff

#SingleInstance

global selectMode := 0
global deleteMode := 0

Chorded(normal, delete, select)
{
	if (deleteMode) {
		SendInput % "{Blind}" . delete
	}
	else if (selectMode) {
		SendInput % "{Blind}" . select
	}
	else {
		SendInput % "{Blind}" . normal
	}
}

CapsLock & r::Reload

CapsLock & s::
	selectMode := 1
Return
CapsLock & s up::
	selectMode := 0
Return
CapsLock & d::
	deleteMode := 1
Return
CapsLock & d up::
	deleteMode := 0
Return

CapsLock & j::Chorded("{Left}", "{BackSpace}", "+{Left}")
CapsLock & l::Chorded("{Right}", "{Delete}", "+{Right}")

CapsLock & k::Chorded("{Down}", "{Up}{End}+{Right}+{End}{BackSpace}{Right}", "+{Down}")
CapsLock & i::Chorded("{Up}", "{Up}{End}+{Right}+{End}{BackSpace}", "+{Up}")

CapsLock & u::Chorded("^{Left}", "^{BackSpace}", "+^{Left}")
CapsLock & o::Chorded("^{Right}", "^{Delete}", "+^{Right}")

CapsLock & h::Chorded("{Home}", "+{Home}{Delete}", "+{Home}")
CapsLock & SC027::Chorded("{End}", "+{End}{Delete}", "+{End}")

CapsLock & Space::SendInput, {Enter}

; AltGr on only right alt is stupid

LAlt::RAlt

; For Mac users (Windows key is mostly useless anyway)

LWin::LCtrl
