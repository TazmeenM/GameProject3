extends Sprite2D

var sizeOfApple = texture.get_size()
var percentageOfApple = 0.8
var heightShown = sizeOfApple.y*percentageOfApple
var topYPosition = sizeOfApple.y - heightShown
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	region_enabled = true
	region_rect = Rect2(0, topYPosition, sizeOfApple.x, heightShown)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
