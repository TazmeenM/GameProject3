class_name Resources extends Node2D

static var numberOfResources = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

static func addResources(numberOfResourcesAdded: int) -> void:
	numberOfResources += numberOfResourcesAdded
