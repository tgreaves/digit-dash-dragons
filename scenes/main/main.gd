extends Node2D

var dedication_scene: PackedScene = preload("res://scenes/dedication/dedication.tscn")
var main_menu_scene: PackedScene = preload("res://scenes/main_menu/main_menu.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var dedication_instance = dedication_scene.instantiate()
	dedication_instance.dedication_complete.connect(on_dedication_complete.bind(dedication_instance))
	add_child(dedication_instance)

func main_menu():
	var main_menu_instance = main_menu_scene.instantiate()
	add_child(main_menu_instance)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_dedication_complete(dedication_instance: Dedication):
	dedication_instance.queue_free()
	main_menu()
