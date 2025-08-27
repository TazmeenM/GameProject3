extends Node2D

@onready var fruit: Area2D = $Fruit

@export var imagePath = "res://assets/sprites/"
@export var imageName = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	imagePath += imageName + ".png"
	fruit.sprite_2d.texture = load(imagePath)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
