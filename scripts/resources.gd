class_name Resources extends Node2D

static var numberOfResources = 0
static var numberOfFruits = 0
static var numberOfApples = 0
static var numberOfOranges = 0
static var money = 0
static var appleWorth = 10
static var orangeWorth = 15

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

static func addResources(numberOfResourcesAdded: int) -> void:
	numberOfResources += numberOfResourcesAdded

static func addFruits(numberOfFruitsAdded: int, fruitName: String) -> void:
	numberOfFruits += numberOfFruitsAdded
	print("Number Of Fruits: " + str(numberOfFruits))
	if fruitName == "apple":
		numberOfApples += numberOfFruitsAdded
		print("Number of Apples: " + str(numberOfApples))
	if fruitName == "orange":
		numberOfOranges += numberOfFruitsAdded
		print("Number of Oranges: " + str(numberOfOranges))
