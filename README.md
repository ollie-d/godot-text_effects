# Text Effects for Godot 4
I wanted to build off [teebarjunk](https://github.com/teebarjunk)'s [godot-text_effects](https://github.com/teebarjunk/godot-text_effects), but first needed to translate them for Godot 4. 

There currently seems to be a bug in Godot 4.2.X that throws thousands of errors a seconds when `@tool` is active on resources extending `RichTextEffects` that are interactig with variables declared outside of `_process_custom_fx()`. I believe this is caused by those variables not being initialized in an "onready" fashion within the editor like other `@tool` scripts since `Resources` are not `Nodes`. 

## Effects Preview:

![Effects](readme/textfx000.gif)

## Transition Preview:

NOT TRANSLATED YET

## Effects

The effects be used like any other bbcode.

`
Hey... [nervous]muh-maybe could I...[/nervous] have the [sparkle c1=red c2=yellow c3=black][cuss]Hecking[/cuss] Cool Sword[/sparkle] of [sparkle c1=yellow c2=orange]maximum unrelenting power[/sparkle]?
`

**cuss**: Replaces letters with symbols, to censor the word, somewhat.


**heart**: Simple wave animation, where some letters are replaced by heart emoji.

- scale: Size of jumping.
- freq: The waviness.


**jump**: Demonstrates how to do animate at the word level, rather than just individual letters.

- angle: Angle to jump in. (Degrees.)


**l33t**: Replaces letters with numbers. Only use if you're a hacker.


**nervous**: Gives every word a unique jiggle.

- scale: The scale of jumpiness.
- freq: The speed of jumpiness.


**number**: Automatically colorizes numbers and the first word after the number.

- color: The color.


**rain**: Just a rainy effect. Not useful, but I think it looks nice.


**sparkle**: Can take up to 3 colors, which it will interpolate between for every letter.

- freq: The frequency. Greater = individual letters are more similarly colorized.
- c1: Color 1
- c2: Color 2
- c3: Color 3


**uwu**: Replaces all letters R and L with W.


**woo**: Alternates between upper and lowercase for all the letters, suggesting a condescending tone.

- scale: The scale of the waves.
- freq: The frequency of the waves.


## RichTextTransition Node

NOT TRANSLATED YET
