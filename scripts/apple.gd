extends Sprite2D

@onready var apple: Area2D = $".."

var sizeOfApple = texture.get_size()
var heightShown
var topYPosition

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	heightShown = sizeOfApple.y*(apple.percentageOfApple)
	topYPosition = sizeOfApple.y - heightShown
	region_enabled = true
	region_rect = Rect2(0, topYPosition, sizeOfApple.x, heightShown)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	heightShown = sizeOfApple.y*(apple.percentageOfApple)
	topYPosition = sizeOfApple.y - heightShown
	#print("Height Shown: " + str(heightShown))
	region_rect = Rect2(0, topYPosition, sizeOfApple.x, heightShown)
