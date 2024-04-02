extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Logging.log_entry("Entered main menu.")
	
	$CanvasLayer/VersionLabel.text = "Version " + Constants.GAME_VERSION

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_exit_game_pressed():
	get_tree().quit()
