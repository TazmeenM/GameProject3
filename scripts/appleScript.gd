extends Area2D

@onready var resources: Resources = $"../../Resources"

var percentageOfApple: float = 0
var amountOfResources = 0
var capacity: float = 10
var numberOfApplesAtOnce = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_apple_button_pressed() -> void:
	if percentageOfApple == 1:
		pickUp()
		

func pickUp() -> void:
	percentageOfApple = 0
	amountOfResources = 0
	resources.addApples(numberOfApplesAtOnce)
