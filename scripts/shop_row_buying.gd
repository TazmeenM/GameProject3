class_name ShopBuying extends Node2D

@export var imagePath = "res://assets/sprites/"
@export var imageName = ""
@onready var fruit_image: Sprite2D = $FruitImage
@onready var incrementor: Node2D = $Incrementor
@onready var product_label: Label = $ProductLabel

static var isBought = {
	"orange": {
		"price": 20,
		"bought": false
		}
}




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	imagePath += imageName + ".png"
	fruit_image.texture = load(imagePath)
	product_label.text = imageName.to_upper() + "PRODUCTION"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
		


func _on_buy_button_pressed() -> void:
	print("Buy button pressed")
	
	for key in isBought:
		if key == imageName:
			if Resources.money >= isBought[key]["price"]:
				isBought[key]["bought"] = true
				Resources.money -= isBought[key]["price"]
