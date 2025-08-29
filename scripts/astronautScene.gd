extends Node2D

@onready var health_bar: ProgressBar = $HealthBar
@onready var apple_button: Button = $AppleButton
@onready var orange_button: Button = $OrangeButton
@onready var pear_button: Button = $PearButton

var isBought = false

var maximumHealth = 100
var health: int

var fruitHealth = {
	"apple": 2,
	"orange": 3,
	"pear": 5
}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if apple_button:
		apple_button.visible = true
		if Resources.numberOfApples > 0:
			apple_button.disabled = false
		elif Resources.numberOfApples <= 0:
			apple_button.disabled = true
	if orange_button:
		isBought = ShopBuying.isBought["orange"]["bought"]
		if isBought:
			if Resources.numberOfOranges > 0:
				orange_button.disabled = false
			elif Resources.numberOfOranges <= 0:
				orange_button.disabled = true
		else:
			orange_button.visible = false
	if pear_button:
		isBought = ShopBuying.isBought["pear"]["bought"]
		if isBought:
			if Resources.numberOfPears > 0:
				pear_button.disabled = false
			elif Resources.numberOfPears <= 0:
				pear_button.disabled = true
		else:
			pear_button.visible = false


func _on_apple_button_pressed() -> void:
	Resources.removeFruits(1, "apple")
	Astronaut.increaseHealth(fruitHealth["apple"])
	print("Apple increases health by: " + str(fruitHealth["apple"]))


func _on_orange_button_pressed() -> void:
	Resources.removeFruits(1, "orange")
	Astronaut.increaseHealth(fruitHealth["orange"])


func _on_pear_button_pressed() -> void:
	Resources.removeFruits(1, "pear")
	Astronaut.increaseHealth(fruitHealth["pear"])


func _on_main_scene_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")
