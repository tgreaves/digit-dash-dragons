extends Node2D

var race_scene: PackedScene = preload("res://scenes/race/race.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Logging.log_entry("Entered main menu.")
	
	$CanvasLayer/VersionLabel.text = "Version " + Constants.GAME_VERSION

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_start_game_pressed():
	var race_instance = race_scene.instantiate()
	add_child(race_instance)
	$CanvasLayer.visible = false

func _on_exit_game_pressed():
	get_tree().quit()



