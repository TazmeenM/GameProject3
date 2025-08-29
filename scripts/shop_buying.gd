class_name BuyingShop extends Node2D
@onready var shop_row_buying_orange: ShopBuying = $ShopRowBuyingOrange
@onready var shop_row_buying_pear: ShopBuying = $ShopRowBuyingPear

var isBought = false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Astronaut.resetGame == true:
		reset()
		print("Game Over Scene")
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")
	orangeBuyingVisibility()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	orangeBuyingVisibility()
	pearBuyingVisibility()


func _on_exit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")

func reset() -> void:
	shop_row_buying_orange.reset()
	shop_row_buying_pear.reset()

func orangeBuyingVisibility() -> void:
	isBought = ShopBuying.isBought["orange"]["bought"]
	shop_row_buying_orange.buy_button.disabled = isBought

func pearBuyingVisibility() -> void:
	isBought = ShopBuying.isBought["pear"]["bought"]
	shop_row_buying_pear.buy_button.disabled = isBought
	
	
