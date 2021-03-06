# ProtoTyping

This is a collection of hacks I've made to make editing text simpler, more ergonomic and more consistent on Windows and Mac.

* Uses a spatial layout instead of mapping functions to the first letter in their name.
* Aims to be easier on your hands than usual keyboard chords.
* Avoids the modes of vi-like systems. If you release all keys, the keyboard goes back to working as normal.
* Hijacks the input of the entire system, and so should work in almost every program.
* Overrides a minimum of default features, so your computer will still be useable for other people. (It does override Caps Lock, but Caps Lock typically hurts more than it helps anyway.)
* Remaps some keys to make different platforms behave more alike.

## Usage

While holding down Caps Lock, you are in _ProtoTyping mode_. You can then use the following:

* `ijkl` are arrow keys.
* `u` and `o` steps one word in either direction.
* `h` and `the key right of L` go to the beginning and end of the line.
* Holding `f` will make the other keys select text (just like holding shift normally).
* Holding `d` will make the other keys delete text (for example, `Caps+d+u` will delete one word backward).
	* There is a special case for `d+i` and `d+k` (up and down), which will delete the current line and move the cursor up or down. This is very useful when programming.
* Windows-specific:
	* Caps Lock acts as Alt Gr when combined with 2, 4, 7, 8, 9, 0, + or the key that on a Swedish keyboard layout corresponds to `¨`. This is useful when writing code using a Swedish keyboard layout.

## Installation

### Windows

1. Install [AutoHotkey](https://www.autohotkey.com).
2. Open `Run` with `Win + R`, type `shell:startup` and press enter. Your startup folder opens.
3. Put `ProtoTyping.ahk` in the startup folder. This makes it start at login.
4. Double-click `ProtoTyping.ahk` to start it for this login session.
5. (optional) Edit `ProtoTyping.ahk` in case you want to disable anything.

### Mac (10.12 Sierra or newer)

1. Install [Karabiner Elements](https://github.com/tekezo/Karabiner-Elements/blob/master/README.md).
2. Replace the file `~/.config/karabiner/karabiner.json` with the `karabiner.json` I provide (or merge them if you are already using Karabiner).

### Mac (before 10.12 Sierra)

1. Install [Karabiner](https://pqrs.org/osx/karabiner/)
2. Go into `System Preferences -> Keyboard -> Keyboard -> Modifier keys` and set Caps Lock to map to Control.
3. Add the contents of `private.xml` to `~/Library/Application Support/Karabiner/private.xml` (or just replace that file if you are new to Karabiner).
