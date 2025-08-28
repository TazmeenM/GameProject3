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
		print("Sell Button Pressed")
		Resources.numberOfApples -= incrementor.numberOfUnits
		print(Resources.numberOfApples)
		Resources.money += incrementor.numberOfUnits * Resources.appleWorth
		print(Resources.money)
		incrementor.numberOfUnits = 0
		incrementor.quantity.text = "0"
	elif imageName == "orange":
		print("Sell Button Pressed")
		Resources.numberOfOranges -= incrementor.numberOfUnits
		print(Resources.numberOfOranges)
		Resources.money += incrementor.numberOfUnits * Resources.orangeWorth
		print(Resources.money)
		incrementor.numberOfUnits = 0
		incrementor.quantity.text = "0"
		
