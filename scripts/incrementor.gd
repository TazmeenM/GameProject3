extends Node2D

var numberOfUnits = 0
@export var fruit: Fruit
@onready var quantity: Label = $Quantity
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


func _on_increase_button_pressed() -> void:
	if shop_row.imageName == "apple":
		print("Image Name Received")
		if numberOfUnits < Resources.numberOfApples:
			numberOfUnits += 1
			print("Number of Units Selling: " + str(numberOfUnits))
