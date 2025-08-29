extends ProgressBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Astronaut.health_bar = self
	max_value = Astronaut.maximumHealth
	value = Astronaut.health


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	value = Astronaut.health
