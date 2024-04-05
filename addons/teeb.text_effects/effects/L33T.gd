@tool
extends RichTextEffect

# Syntax: [l33t][/l33t]
var bbcode = "l33t"


var leet = {
	utils.ord("L"): utils.ord("1"),
	utils.ord("l"): utils.ord("1"),
	utils.ord("I"): utils.ord("1"),
	utils.ord("i"): utils.ord("1"),
	utils.ord("E"): utils.ord("3"),
	utils.ord("e"): utils.ord("3"),
	utils.ord("T"): utils.ord("7"),
	utils.ord("t"): utils.ord("7"),
	utils.ord("S"): utils.ord("5"),
	utils.ord("s"): utils.ord("5"),
	utils.ord("A"): utils.ord("4"),
	utils.ord("a"): utils.ord("4"),
	utils.ord("O"): utils.ord("0"),
	utils.ord("o"): utils.ord("0"),
}


func _process_custom_fx(char_fx):
	if char_fx.glyph_index in leet:
		char_fx.glyph_index = leet[char_fx.glyph_index]
	return true
