class_name Shop extends Node2D
@onready var shop_row_apple: Node2D = $ShopRowApple
@onready var shop_row_orange: Node2D = $ShopRowOrange


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Astronaut.resetGame == true:
		reset()
		get_tree().change_scene_to_file("res://scenes/shop_buying.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_exit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")

func reset() -> void:
	shop_row_apple.reset()
	shop_row_orange.reset()
	
