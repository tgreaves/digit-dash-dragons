extends Node2D

# Sprite imports.
# Horizontal: 10
# Vertical: 13
# Size: 128 x 128

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func prepare_for_race(n):
	global_position = Vector2(100, 500 + (n * 300))
	$AnimatedSprite2D.play()
	
