class_name Fruit extends Area2D

@onready var resources: Resources = $"../../Resources"
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var dropoff_box_system: Node2D = $".."


@export var dropoff_box: Area2D
@export var imagePath = "res://assets/sprites/"
@export var imageName = ""

var percentageOfFruit: float = 0
var amountOfResources = 0
var capacity: float = 10
var numberOfFruitsAtOnce = 1

var fruits = {
	"apple": 10, 
	"orange": 15, 
	"pear": 25, 
	"watermelon": 40
	}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Image Name:")
	imageName = dropoff_box_system.imageName
	print(fruits[imageName])
	capacity = fruits[imageName]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_fruit_button_pressed() -> void:
	if percentageOfFruit == 1:
		pickUp()
	
		

func pickUp() -> void:
	percentageOfFruit = 0
	amountOfResources = 0
	resources.addFruits(numberOfFruitsAtOnce, imageName)
	dropoff_box.numberOfResources = 0

func reset() -> void:
	percentageOfFruit = 0
	amountOfResources = 0
