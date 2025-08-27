extends Sprite2D

@onready var fruit: Area2D = $".."

var sizeOfFruit = texture.get_size()
var heightShown
var topYPosition

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	heightShown = sizeOfFruit.y*(fruit.percentageOfFruit)
	topYPosition = sizeOfFruit.y - heightShown
	region_enabled = true
	region_rect = Rect2(0, topYPosition, sizeOfFruit.x, heightShown)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	heightShown = sizeOfFruit.y*(fruit.percentageOfFruit)
	topYPosition = sizeOfFruit.y - heightShown
	#print("Height Shown: " + str(heightShown))
	region_rect = Rect2(0, topYPosition, sizeOfFruit.x, heightShown)
