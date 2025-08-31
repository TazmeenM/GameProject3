class_name BuyingShopUpgrades extends Node2D
@onready var shop_row_buying_upgrades_apple: ShopBuyingUpgrades = $ShopRowBuyingUpgradesApple
@onready var shop_row_buying_upgrades_orange: ShopBuyingUpgrades = $ShopRowBuyingUpgradesOrange
@onready var shop_row_buying_upgrades_pear: ShopBuyingUpgrades = $ShopRowBuyingUpgradesPear
@onready var shop_row_buying_upgrades_watermelon: ShopBuyingUpgrades = $ShopRowBuyingUpgradesWatermelon


var isBought = false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Astronaut.resetGame == true:
		reset()
		print("Game Over Scene")
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")
	




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_exit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")

func reset() -> void:
	shop_row_buying_upgrades_apple.reset()
	shop_row_buying_upgrades_orange.reset()
	shop_row_buying_upgrades_pear.reset()
	shop_row_buying_upgrades_watermelon.reset()


func _on_upgrades_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/shop_buying_upgrades.tscn")
