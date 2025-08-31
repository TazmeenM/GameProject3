class_name ShopBuyingUpgrades extends Node2D

@export var imagePath = "res://assets/sprites/"
@export var imageName = ""
@onready var fruit_image: Sprite2D = $FruitImage
@onready var buy_button: Button = $BuyButton
@onready var product_label: Label = $ProductLabel
@onready var price_label: Label = $PriceLabel


static var upgradesBought = {
	"apple": {
		"basePrice": 10,
		"price": 10,
		"multiplier": 1.25,
		"numberBought": 0,
		"numberAtOnce": 1
	},
	"orange": {
		"basePrice": 20,
		"price": 20,
		"multiplier": 1.5,
		"numberBought": 0,
		"numberAtOnce": 1
	},
	"pear": {
		"basePrice": 40,
		"price": 40,
		"multiplier": 1.75,
		"numberBought": 0,
		"numberAtOnce": 1
	},
	"watermelon": {
		"basePrice": 70,
		"price": 70,
		"multiplier": 2,
		"numberBought": 0,
		"numberAtOnce": 1
	}
	
}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	imagePath += imageName + ".png"
	fruit_image.texture = load(imagePath)
	product_label.text = imageName.to_upper() + " UPGRADER"
	price_label.text = "PRICE: " + str(upgradesBought[imageName]["price"])



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	price_label.text = "PRICE: " + str(upgradesBought[imageName]["price"])
		


func _on_buy_button_pressed() -> void:
	print("Buy button pressed")
	
	for key in upgradesBought:
		if key == imageName:
			if Resources.money >= upgradesBought[key]["price"]:
				upgradesBought[key]["numberBought"] += 1
				Resources.money -= upgradesBought[key]["price"]
				upgradesBought[key]["price"] = round(upgradesBought[key]["price"]*upgradesBought[key]["multiplier"])
				price_label.text = str(round(upgradesBought[key]["price"]))
				upgradesBought[key]["numberAtOnce"] += 1

static func reset() -> void:
	for key in upgradesBought:
		upgradesBought[key]["numberBought"] = 0
		upgradesBought[key]["price"] = upgradesBought[key]["basePrice"]
		print(key)
