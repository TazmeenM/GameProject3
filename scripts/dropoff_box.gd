extends Area2D

@onready var robot_1: CharacterBody2D = $"../Background/Robot1"
@onready var apple: Area2D = $"../Apple"


var numberOfResources = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Robot:
		#Checking whether or not the apple is at full capacity
		if numberOfResources < apple.capacity:
			numberOfResources += body.numberOfResourcesCarrying
			if (apple.capacity - numberOfResources >= 0):
				print("Number of Resources: " + str(numberOfResources))
				print("Apple capacity: " + str(apple.capacity))
				print(numberOfResources/apple.capacity)
				apple.percentageOfApple = numberOfResources/apple.capacity
				print("Apple percentage: " + str(apple.percentageOfApple))
			else:
				apple.percentageOfApple = 1
				print("Apple percentage full")
		body.numberOfResourcesCarrying = 0
		body.yDirection = body.yDirection*-1
		print(body.yDirection)
