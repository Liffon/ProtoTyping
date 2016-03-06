# ProtoTyping

This is a collection of hacks I've made to make editing text easier and more consistent on Windows and Mac (Linux coming ... eventually).

## Usage

When you hold down Caps Lock, you are in ProtoTyping mode. You can then use the following:

* `ijkl` are arrow keys
* `u` and `o` are word forward and backward
* `h` and the key right of `l` are home and end
* Holding `s` will make the other keys select text (just like holding shift normally)
* Holding `d` will make the other keys delete text (for example, Caps+d+u will delete one word backward)

## Installation

### Windows

1. Install [AutoHotkey](https://www.autohotkey.com).
2. Open `Run` with `Win + R`, type `shell:startup` and press enter. Your startup folder opens.
3. Put a shortcut to `ProtoTyping/ProtoTyping.ahk` in the startup folder.

### Mac

1. Install [Karabiner](https://pqrs.org/osx/karabiner/)
2. Go into `System Preferences -> Keyboard -> Keyboard -> Modifier keys` and set Caps Lock to map to Control.
3. Copy `ProtoTyping/private.xml` to `~/Library/Application Support/Karabiner/`.