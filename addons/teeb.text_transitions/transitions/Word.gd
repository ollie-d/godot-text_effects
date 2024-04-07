@tool
extends "res://addons/teeb.text_transitions/transitions/TransitionBase.gd"


# Syntax: [word][/word]
var bbcode = "word"


var SPLITTERS = [utils.ord(" "), utils.ord("."), utils.ord(",")]


var _index = 0
var _last = 999


func _process_custom_fx(char_fx):
	if char_fx.range.x < _last or char_fx.glyph_index in SPLITTERS:
		_index = char_fx.range.x
	
	_last = char_fx.range.x
	var tween_data = get_tween_data(char_fx)
	var t = 1.0 - tween_data.get_t(_index)
	char_fx.color.a *= t
	return true
