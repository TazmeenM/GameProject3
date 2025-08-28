extends Area2D

@onready var robot_1: CharacterBody2D = $"../Background/Robot1"
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D


var resourcePackageSize = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Robot:
		body.numberOfResourcesCarrying += resourcePackageSize
		print(body.numberOfResourcesCarrying)
		body.yDirection = body.yDirection*-1
		print(body.yDirection)
