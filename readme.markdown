# ProtoTyping

This is a collection of hacks I've made to make editing text easier on Windows and Mac (Linux coming ... eventually).

## Usage

When you hold down Caps Lock, you are in ProtoTyping mode. You can then use the following:

* `ijkl` are arrow keys
* `u` and `o` are word forward and backward
* `h` and the key right of `l` are home and end
* Holding `s` will make the other keys select text (just like holding shift normally)
* Holding `d` will make the other keys delete text (for example, Caps+d+u will delete one word backward)

## Installation

### Windows

Install [AutoHotkey](https://www.autohotkey.com), and setup `ProtoTyping.ahk` to run on startup.

### Mac

Go into `System Preferences -> Keyboard -> Keyboard -> Modifier keys` and set Caps Lock to map to Control.

Install [Karabiner](https://pqrs.org/osx/karabiner/), and put `private.xml` in `~/Library/Application Support/Karabiner/`.

    cp "ProtoTyping/private.xml" "~/Library/Application Support/Karabiner/private.xml"

