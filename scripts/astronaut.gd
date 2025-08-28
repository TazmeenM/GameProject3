extends Node2D

@onready var health_bar: ProgressBar = $HealthBar
@onready var apple_button: Button = $AppleButton
@onready var orange_button: Button = $OrangeButton
@onready var pear_button: Button = $PearButton

var maximumHealth = 100
var health = 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if apple_button:
		if Resources.numberOfApples > 0:
			apple_button.disabled = false
		elif Resources.numberOfApples <= 0:
			apple_button.disabled = true
	if orange_button:
		if Resources.numberOfOranges > 0:
			orange_button.disabled = false
		elif Resources.numberOfOranges <= 0:
			orange_button.disabled = true
	if pear_button:
		if Resources.numberOfPears > 0:
			pear_button.disabled = false
		elif Resources.numberOfPears <= 0:
			pear_button.disabled = true

func decreaseHealth(healthDecreased: int) -> void:
	health -= healthDecreased

func increaseHealth(healthIncreased: int) -> void:
	health += healthIncreased


func _on_apple_button_pressed() -> void:
	pass # Replace with function body.


func _on_orange_button_pressed() -> void:
	pass # Replace with function body.


func _on_pear_button_pressed() -> void:
	pass # Replace with function body.


func _on_main_scene_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")
