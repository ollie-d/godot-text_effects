@tool
extends RichTextEffect


# Syntax: [cuss][/cuss]
var bbcode = "cuss"

var VOWELS = [utils.ord("a"), utils.ord("e"), utils.ord("i"), utils.ord("o"), utils.ord("u"),
			  utils.ord("A"), utils.ord("E"), utils.ord("I"), utils.ord("O"), utils.ord("U")]
var CHARS = [utils.ord("&"), utils.ord("$"), utils.ord("!"), utils.ord("@"), utils.ord("*"), 
			 utils.ord("#"), utils.ord("%")]
var SPACE = utils.ord(" ")

var _was_space = false


func _process_custom_fx(char_fx):
	var c = char_fx.glyph_index
	if not _was_space and not char_fx.relative_index == 0 and not c == SPACE:
		var t = char_fx.elapsed_time + char_fx.glyph_index * 10.2 + char_fx.range.x * 2
		t *= 4.3
		if c in VOWELS or sin(t) > 0.0:
			char_fx.glyph_index = CHARS[int(t) % len(CHARS)]
	
	_was_space = c == SPACE
	
	return true
