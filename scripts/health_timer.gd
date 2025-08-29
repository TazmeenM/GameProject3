extends Node2D

var timePassed = 0

var timer = Timer.new()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(timer)
	timer.wait_time = 10
	timer.one_shot = false
	timer.timeout.connect(onTimerEnded)
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func onTimerEnded() -> void:
	Astronaut.decreaseHealth(1)
	print("Timer went off")

func reset() -> void:
	timer.stop()
