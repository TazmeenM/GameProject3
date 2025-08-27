extends Area2D

@onready var resources: Resources = $"../../Resources"
@onready var sprite_2d: Sprite2D = $Sprite2D

@export var dropoff_box: Area2D
@export var imagePath = "res://assets/sprites/"
@export var imageName = ""

var fruitName = ""

var percentageOfFruit: float = 0
var amountOfResources = 0
var capacity: float = 10
var numberOfFruitsAtOnce = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	imagePath += imageName + ".png"
	sprite_2d.texture = load(imagePath)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_apple_button_pressed() -> void:
	if percentageOfFruit == 1:
		pickUp()
		

func pickUp() -> void:
	percentageOfFruit = 0
	amountOfResources = 0
	resources.addFruits(numberOfFruitsAtOnce)
	dropoff_box.numberOfResources = 0
