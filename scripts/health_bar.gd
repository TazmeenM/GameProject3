extends ProgressBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Astronaut.health_bar = self
	max_value = Astronaut.maximumHealth
	value = Astronaut.health


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	value = Astronaut.health
	if value == 0:
		Astronaut.resetGame = true
		Astronaut.reset()
		HealthTimer.reset()
		get_tree().change_scene_to_file("res://scenes/main_scene.tscn")
