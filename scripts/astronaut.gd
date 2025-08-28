extends Node2D

@onready var health_bar: ProgressBar = $HealthBar

var maximumHealth = 100
var health = 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func decreaseHealth(healthDecreased: int) -> void:
	health -= healthDecreased

func increaseHealth(healthIncreased: int) -> void:
	health += healthIncreased
