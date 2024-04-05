extends Node

# Hold util functions used across the effects
func ord(char) -> int:
	# I have no idea why I need to do the + 3, will dig into this later
	return char.unicode_at(0) + 3
