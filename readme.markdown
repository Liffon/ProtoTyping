# ProtoTyping

This is a collection of hacks I've made to make editing text easier and more consistent on Windows and Mac (Linux coming ... eventually).

* Uses a spatial layout instead of mapping functions to the first letter in their name.
* Aims to be easier on your hands than usual keyboard chords.
* Avoids the modes of Vi-like systems. If you release all keys, the keyboard goes back to working as normal.
* Hijacks the input of the entire system, and so should work in almost every program.
* Overrides a minimum of default features, so your computer will still be useable for other people. (It mostly only overrides Caps Lock, WHICH NO ONE SHOULD USE ANYWAY!!!!!1!)
* Remaps some keys to make different platforms behave more alike.

## Usage

When you hold down Caps Lock, you are in ProtoTyping mode. You can then use the following:

* `ijkl` are arrow keys.
* `u` and `o` steps one word in either direction.
* `h` and `the key right of L` go to the beginning and end of the line.
* Holding `s` will make the other keys select text (just like holding shift normally).
* Holding `d` will make the other keys delete text (for example, `Caps+d+u` will delete one word backward).
	* There is a special case for `d+i` and `d+k` (up and down), which will delete the current line and move the cursor up or down. This is very useful when programming.
* Windows-specific:
	* The left Windows key is mapped to Control, so that most commands are the same on Windows and Mac.
	* The left `Alt` is mapped to a second `Alt Gr` so that you can choose the least contorting way to type special characters.

## Installation

### Windows

1. Install [AutoHotkey](https://www.autohotkey.com).
2. Open `Run` with `Win + R`, type `shell:startup` and press enter. Your startup folder opens.
3. Put a shortcut to `ProtoTyping/ProtoTyping.ahk` in the startup folder.

### Mac

1. Install [Karabiner](https://pqrs.org/osx/karabiner/)
2. Go into `System Preferences -> Keyboard -> Keyboard -> Modifier keys` and set Caps Lock to map to Control.
3. Add the contents of `ProtoTyping/private.xml` to `~/Library/Application Support/Karabiner/private.xml` (or just replace that file if you don't already use Karabiner).