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

CapsLock & f::
	selectMode := 1
Return
CapsLock & f up::
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
CapsLock & 2::SendInput, {RAlt down}2{RAlt up}
CapsLock & 4::SendInput, {RAlt down}4{RAlt up}
CapsLock & 7::SendInput, {RAlt down}7{RAlt up}
CapsLock & 8::SendInput, {RAlt down}8{RAlt up}
CapsLock & 9::SendInput, {RAlt down}9{RAlt up}
CapsLock & 0::SendInput, {RAlt down}0{RAlt up}
CapsLock & +::SendInput, {RAlt down}{+}{RAlt up}
CapsLock & sc01B::SendInput, {RAlt down}{vkBA}{RAlt up}{Space}

; AltGr on only right alt is stupid

; LAlt::RAlt

; For Mac users (Windows key is mostly useless anyway)

; LWin::LCtrl
