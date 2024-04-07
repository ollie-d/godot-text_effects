@tool
extends TransitionBase

signal char_placed

# Syntax: [bounce][/bounce]
var bbcode = "bounce"

var triggered = false

var triggered_glyphs = []

func bounce(t, wave=8.0) -> float:
	return sin(13.0 * HALFPI * t) * pow(2.0, wave * (t - 1.0))


func ready():
	# There is no _ready on resources so we hack
	pass


func _process_custom_fx(char_fx):
	var t = get_t(char_fx)
	char_fx.offset.y = bounce(t, 8.0) * 8.0
	char_fx.color.a *= (1.0 - t)
	
	if (char_fx.color.a != 1.0) and !triggered:
		triggered = true
		ready()
	
	if triggered:
		if (char_fx.relative_index not in triggered_glyphs) and char_fx.color.a >= 0.2:
			triggered_glyphs.append(char_fx.relative_index)
			char_placed.emit()
			bus.play_sound()
	return true
