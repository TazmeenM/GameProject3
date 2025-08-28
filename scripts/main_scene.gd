extends Node2D
@onready var dropoff_box_system_orange: Node2D = $DropoffBoxSystemOrange
@onready var pickup_box_orange: Area2D = $PickupBoxOrange



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if ShopBuying.isBought["orange"]:
		pickup_box_orange.sprite_2d.visible = false
		pickup_box_orange.collision_shape_2d.visible = false
		
		#For the drop-off box
		dropoff_box_system_orange.
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_shop_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/shop.tscn")
