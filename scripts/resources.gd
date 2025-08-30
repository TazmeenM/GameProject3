class_name Resources extends Node2D

static var numberOfResources = 0
static var numberOfFruits = 0
static var numberOfApples = 0
static var numberOfOranges = 0
static var numberOfPears = 0
static var numberOfWatermelons = 0
static var money = 0

static var fruitValues = {
	"apple": 10,
	"orange": 20,
	"pear": 30,
	"watermelon": 50
}
static var appleWorth = 10
static var orangeWorth = 15
static var pearWorth = 25

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
	elif fruitName == "orange":
		numberOfOranges += numberOfFruitsAdded
		print("Number of Oranges: " + str(numberOfOranges))
	elif fruitName == "pear":
		numberOfPears += numberOfFruitsAdded
		print("Number of Pears: " + str(numberOfPears))
	if fruitName == "watermelon":
		numberOfWatermelons += numberOfFruitsAdded
		print("Number of Apples: " + str(numberOfWatermelons))

static func removeFruits(numberOfFruitsRemoved: int, fruitName: String) -> void:
	numberOfFruits += numberOfFruitsRemoved
	print("Number Of Fruits: " + str(numberOfFruits))
	if fruitName == "apple":
		numberOfApples -= numberOfFruitsRemoved
		print("Number of Apples: " + str(numberOfApples))
	elif fruitName == "orange":
		numberOfOranges -= numberOfFruitsRemoved
		print("Number of Oranges: " + str(numberOfOranges))
	elif fruitName == "pear":
		numberOfPears -= numberOfFruitsRemoved
		print("Number of Pears: " + str(numberOfPears))
	elif fruitName == "watermelon":
		numberOfWatermelons -= numberOfFruitsRemoved
		print("Number of Pears: " + str(numberOfWatermelons))

static func fruitWorth(fruitName: String) -> int:
	return fruitValues[fruitName]

static func reset() -> void:
	numberOfResources = 0
	numberOfFruits = 0
	numberOfApples = 0
	numberOfOranges = 0
	numberOfPears = 0
	numberOfWatermelons = 0
	money = 0
