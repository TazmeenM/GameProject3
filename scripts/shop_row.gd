extends Node2D

@export var imagePath = "res://assets/sprites/"
@export var imageName = ""
@onready var fruit_image: Sprite2D = $FruitImage
@onready var incrementor: Node2D = $Incrementor
@onready var product_label: Label = $ProductLabel




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	imagePath += imageName + ".png"
	fruit_image.texture = load(imagePath)
	product_label.text = imageName.to_upper()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_sell_button_pressed() -> void:
	Resources.removeFruits(incrementor.numberOfUnits, imageName)
	Resources.money += incrementor.numberOfUnits*Resources.fruitWorth(imageName)
	incrementor.numberOfUnits = 0
	incrementor.quantity.text = "0"

func reset() -> void:
	print("Shop row reset")
	incrementor.numberOfUnits = 0
	incrementor.quantity.text = "0"
	
		
