@tool
extends "res://addons/teeb.text_transitions/transitions/TransitionBase.gd"


# Syntax: [redacted freq wave][/redacted]
var bbcode = "redacted"


var BLOCK = utils.ord("█")
var MID_BLOCK = utils.ord("▓")


func _process_custom_fx(char_fx):
	var tween_data = get_tween_data(char_fx)
	var t1 = tween_data.get_t(char_fx.range.x, false)
	var t2 = tween_data.get_t(char_fx.range.x+1, false)
	
	if tween_data.reverse:
		char_fx.color.a = 1.0 - t1
		if t1 != t2:
			char_fx.glyph_index = MID_BLOCK
	else:
		if t1 > 0.0 and (char_fx.glyph_index != SPACE or char_fx.relative_index % 2 == 0):
			var freq:float = char_fx.env.get("freq", 1.0)
			var scale:float = char_fx.env.get("scale", 1.0)
			char_fx.glyph_index = MID_BLOCK if t1 != t2 else BLOCK
			char_fx.color = Color.BLACK
			char_fx.offset.y -= sin(char_fx.range.x * freq) * scale
	return true
