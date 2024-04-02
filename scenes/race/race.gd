extends Node2D

var dragon_scene: PackedScene = preload("res://scenes/dragon/dragon.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	prepare_dragons()


func prepare_dragons():
	for n in range(0, 2):
		Logging.log_entry(str(n))
		var dragon_instance = dragon_scene.instantiate()
		dragon_instance.prepare_for_race(n)
		add_child(dragon_instance)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


