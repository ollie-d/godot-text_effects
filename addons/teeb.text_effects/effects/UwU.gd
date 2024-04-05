@tool
extends RichTextEffect


# Syntax: [uwu][/uwu]
var bbcode = "uwu"

var r = utils.ord("r")
var R = utils.ord("R")
var l = utils.ord("l")
var L = utils.ord("L")

var w = utils.ord("w")
var W = utils.ord("W")


func _process_custom_fx(char_fx):
	match char_fx.glyph_index:
		r, l: char_fx.glyph_index = w
		R, L: char_fx.glyph_index = W
	return true
