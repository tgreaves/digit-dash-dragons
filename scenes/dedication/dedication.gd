extends Node2D
class_name Dedication

signal dedication_complete

enum {
	FADE_IN,
}

var state

# Called when the node enters the scene tree for the first time.
func _ready():
	state = FADE_IN

	$StateTimer.start(5)

	$CanvasLayer/DedicationContainer.set_modulate(Color(0, 0, 0, 0))
	var tween = get_tree().create_tween()
	tween.tween_property($CanvasLayer/DedicationContainer, "modulate", Color(1, 1, 1, 1), 1.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#DisplayServer.mouse_set_mode(DisplayServer.MOUSE_MODE_HIDDEN)

	match state:
		FADE_IN:
			if $StateTimer.time_left == 0:
				dedication_complete.emit()
				
	
func _input(_ev):
	if Input.is_action_just_pressed("ui_accept"):
		$StateTimer.stop()
		dedication_complete.emit()
