extends Area2D

@onready var robot_1: CharacterBody2D = $"../Background/Robot1"

var numberOfResources = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Robot:
		body.yDirection = body.yDirection*-1
		print(body.yDirection)
