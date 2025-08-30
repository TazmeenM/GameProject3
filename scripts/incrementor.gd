extends Node2D

var numberOfUnits = 0
@export var fruit: Fruit
@onready var quantity: Label = $Quantity
@onready var decrease_button: Button = $DecreaseButton
@onready var increase_button: Button = $IncreaseButton
@onready var shop_row: Node2D = $".."



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_decrease_button_pressed() -> void:
	if numberOfUnits > 0:
		numberOfUnits -= 1
		quantity.text = numberOfUnits


func _on_increase_button_pressed() -> void:
	if shop_row.imageName == "apple":
		print("Image Name Received")
		if numberOfUnits < Resources.numberOfApples:
			numberOfUnits += 1
			print("Number of Units Selling: " + str(numberOfUnits))
			quantity.text = str(numberOfUnits)
		else:
			print("Number of Apples Available: " + str(Resources.numberOfApples))
			
	elif shop_row.imageName == "orange":
		print("Image Name Received")
		if numberOfUnits < Resources.numberOfOranges:
			numberOfUnits += 1
			print("Number of Units Selling: " + str(numberOfUnits))
			quantity.text = str(numberOfUnits)
		else:
			print("Number of Oranges Available: " + str(Resources.numberOfOranges))
	
	elif shop_row.imageName == "pear":
		print("Image Name Received")
		if numberOfUnits < Resources.numberOfPears:
			numberOfUnits += 1
			print("Number of Units Selling: " + str(numberOfUnits))
			quantity.text = str(numberOfUnits)
		else:
			print("Number of PEars Available: " + str(Resources.numberOfPears))

	elif shop_row.imageName == "watermelon":
		print("Image Name Received")
		if numberOfUnits < Resources.numberOfWatermelons:
			numberOfUnits += 1
			print("Number of Units Selling: " + str(numberOfUnits))
			quantity.text = str(numberOfUnits)
		else:
			print("Number of Watermelons Available: " + str(Resources.numberOfWatermelons))

func setVisibility(visibility: bool) -> void:
	quantity.visible = visibility
	decrease_button.visible = visibility
	increase_button.visible = visibility
