extends Node2D

@export var imagePath = "res://assets/sprites/"
@export var imageName = ""
@onready var fruit_image: Sprite2D = $FruitImage
@onready var incrementor: Node2D = $Incrementor



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	imagePath += imageName + ".png"
	fruit_image.texture = load(imagePath)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_sell_button_pressed() -> void:
	if imageName == "apple":
		Resources.numberOfApples -= incrementor.numberOfUnits
		Resources.money += incrementor.numberOfUnits * Resources.appleWorth
		incrementor.numberOfUnits = 0
