extends Node2D

@onready var health_bar: ProgressBar = $HealthBar
@onready var apple_button: Button = $AppleButton
@onready var orange_button: Button = $OrangeButton
@onready var pear_button: Button = $PearButton

var maximumHealth = 100
var health: int
var resetGame = false

var fruitHealth = {
	"apple": 2,
	"orange": 3,
	"pear": 5,
	"watermelon": 10
}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	health = 100


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if health == 0:
		resetGame = true
		reset()
		HealthTimer.reset()
		print("Main Scene")
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")

func decreaseHealth(healthDecreased: int) -> void:
	if (health - healthDecreased > 0):
		health -= healthDecreased
	else:
		health = 0
	print("Current health after decrease: " + str(health))
	if health_bar:
		health_bar.value = health

func increaseHealth(healthIncreased: int) -> void:
	print("Health before increase: " + str(health))
	if (health + healthIncreased < 100):
		health += healthIncreased
	else:
		health = 100
	print("Current health after increase: " + str(health))
	if health_bar:
		health_bar.value = health

func reset() -> void:
	health = 100
