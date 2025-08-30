extends Node2D
@onready var dropoff_box_system_orange: Node2D = $DropoffBoxSystemOrange
@onready var pickup_box_orange: Area2D = $PickupBoxOrange
@onready var orange_robot: Robot = $OrangeRobot
@onready var pickup_box_pear: Area2D = $PickupBoxPear
@onready var dropoff_box_system_pear: Node2D = $DropoffBoxSystemPear
@onready var pear_robot: Robot = $PearRobot
@onready var dropoff_box_system_watermelon: Node2D = $DropoffBoxSystemWatermelon
@onready var pickup_box_watermelon: Area2D = $PickupBoxWatermelon
@onready var watermelon_robot: Robot = $WatermelonRobot


var isBought = false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Astronaut.resetGame == true:
		reset()
		print("Shop")
		get_tree().change_scene_to_file("res://scenes/shop.tscn")
	orangeStationVisibility()
	pearStationVisibility()
	watermelonStationVisibility()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func orangeStationVisibility() -> void:
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
	orange_robot.animated_sprite_2d.visible = isBought
	orange_robot.collision_shape_2d.visible = isBought


func pearStationVisibility() -> void:
	isBought = ShopBuying.isBought["pear"]["bought"]
	pickup_box_pear.sprite_2d.visible = isBought
	pickup_box_pear.collision_shape_2d.visible = isBought
	
	#For the drop-off box
	dropoff_box_system_pear.dropoff_box.sprite_2d.visible = isBought
	dropoff_box_system_pear.dropoff_box.sprite_2d.visible = isBought
	dropoff_box_system_pear.dropoff_box.sprite_2d.visible = isBought
	
	dropoff_box_system_pear._3d_printer.sprite_2d.visible = isBought
	dropoff_box_system_pear.fruit_button.disabled = !isBought
	dropoff_box_system_pear.fruit.sprite_2d.visible = isBought
	
	#For the robot
	pear_robot.animated_sprite_2d.visible = isBought
	pear_robot.collision_shape_2d.visible = isBought

func watermelonStationVisibility() -> void:
	isBought = ShopBuying.isBought["watermelon"]["bought"]
	pickup_box_watermelon.sprite_2d.visible = isBought
	pickup_box_watermelon.collision_shape_2d.visible = isBought
	
	#For the drop-off box
	dropoff_box_system_watermelon.dropoff_box.sprite_2d.visible = isBought
	dropoff_box_system_watermelon.dropoff_box.sprite_2d.visible = isBought
	dropoff_box_system_watermelon.dropoff_box.sprite_2d.visible = isBought
	
	dropoff_box_system_watermelon._3d_printer.sprite_2d.visible = isBought
	dropoff_box_system_watermelon.fruit_button.disabled = !isBought
	dropoff_box_system_watermelon.fruit.sprite_2d.visible = isBought
	
	#For the robot
	watermelon_robot.animated_sprite_2d.visible = isBought
	watermelon_robot.collision_shape_2d.visible = isBought


func _on_shop_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/shop.tscn")


func _on_shop_buying_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/shop_buying.tscn")


func _on_astronaut_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/astronaut.tscn")

func reset() -> void:
	dropoff_box_system_orange.reset()
	dropoff_box_system_pear.reset()
	Resources.reset()
