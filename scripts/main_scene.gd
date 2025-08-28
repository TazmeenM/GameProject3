extends Node2D
@onready var dropoff_box_system_orange: Node2D = $DropoffBoxSystemOrange
@onready var pickup_box_orange: Area2D = $PickupBoxOrange
@onready var orangeRobot: Robot = $Robot


var isBought = false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#For the orange
	isBought = ShopBuying.isBought["orange"]["bought"]
	pickup_box_orange.sprite_2d.visible = isBought
	pickup_box_orange.collision_shape_2d.visible = isBought
	
	#For the drop-off box
	dropoff_box_system_orange.dropoff_box.sprite_2d.visible = isBought
	dropoff_box_system_orange.dropoff_box.sprite_2d.visible = isBought
	dropoff_box_system_orange.dropoff_box.sprite_2d.visible = isBought
	
	dropoff_box_system_orange._3d_printer.sprite_2d.visible = isBought
	dropoff_box_system_orange.fruit_button.disabled = !isBought
	dropoff_box_system_orange.fruit.sprite_2d.visible = isBought
	
	#For the robot
	orangeRobot.animated_sprite_2d.visible = isBought
	orangeRobot.collision_shape_2d.visible = isBought
	
	
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_shop_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/shop.tscn")


func _on_shop_buying_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/shop_buying.tscn")
