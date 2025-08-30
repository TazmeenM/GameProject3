class_name Shop extends Node2D
@onready var shop_row_apple: Node2D = $ShopRowApple
@onready var shop_row_orange: Node2D = $ShopRowOrange
@onready var shop_row_pear: Node2D = $ShopRowPear
@onready var shop_row_watermelon: Node2D = $ShopRowWatermelon


var isBought = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Astronaut.resetGame == true:
		reset()
		print("Shop Buying")
		ShopBuying.reset()
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")
	orangeSellingVisibility()
	pearSellingVisibility()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_exit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")

func orangeSellingVisibility() -> void:
	isBought = ShopBuying.isBought["orange"]["bought"]
	shop_row_orange.fruit_image.visible = isBought
	shop_row_orange.incrementor.setVisibility(isBought)
	shop_row_orange.product_label.visible = isBought
	shop_row_orange.price_label.visible = isBought
	shop_row_orange.sell_button.visible = isBought

func pearSellingVisibility() -> void:
	isBought = ShopBuying.isBought["pear"]["bought"]
	shop_row_pear.fruit_image.visible = isBought
	shop_row_pear.incrementor.setVisibility(isBought)
	shop_row_pear.product_label.visible = isBought
	shop_row_pear.price_label.visible = isBought
	shop_row_pear.sell_button.visible = isBought

func watermelonSellingVisibility() -> void:
	isBought = ShopBuying.isBought["watermelon"]["bought"]
	shop_row_watermelon.fruit_image.visible = isBought
	shop_row_watermelon.incrementor.setVisibility(isBought)
	shop_row_watermelon.product_label.visible = isBought
	shop_row_watermelon.price_label.visible = isBought
	shop_row_watermelon.sell_button.visible = isBought

func reset() -> void:
	shop_row_apple.reset()
	shop_row_orange.reset()
	shop_row_pear.reset()
	shop_row_watermelon.reset()
	
