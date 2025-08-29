class_name Shop extends Node2D
@onready var shop_row_buying_orange: ShopBuying = $ShopRowBuyingOrange
@onready var shop_row_buying_pear: ShopBuying = $ShopRowBuyingPear



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_exit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")

func reset() -> void:
	shop_row_buying_orange.reset()
	shop_row_buying_pear.reset()
	
