extends Node2D

# Global signal bus

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func play_sound():
	var r = RandomNumberGenerator.new()
	r.randomize()
	$sound.pitch_scale = r.randf_range(0.8, 1.8)
	$sound.play()


