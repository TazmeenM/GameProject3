extends Area2D

@onready var robot_1: CharacterBody2D = $"../Background/Robot1"
@onready var fruit: Area2D = $"../Fruit"
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

var numberOfResources = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Robot:
		#Checking whether or not the fruit is at full capacity
		if numberOfResources < fruit.capacity:
			numberOfResources += body.numberOfResourcesCarrying
			if (fruit.capacity - numberOfResources >= 0):
				print("Number of Resources: " + str(numberOfResources))
				print("Fruit capacity: " + str(fruit.capacity))
				print(numberOfResources/fruit.capacity)
				fruit.percentageOfFruit = numberOfResources/fruit.capacity
				print("Fruit percentage: " + str(fruit.percentageOfFruit))
			else:
				fruit.percentageOfFruit = 1
				print("Fruit percentage full")
		body.numberOfResourcesCarrying = 0
		body.yDirection = body.yDirection*-1
		print(body.yDirection)

func reset() -> void:
	numberOfResources = 0
