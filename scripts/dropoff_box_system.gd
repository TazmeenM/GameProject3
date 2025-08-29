extends Node2D

@onready var dropoff_box: Area2D = $DropoffBox
@onready var _3d_printer: Area2D = $"3DPrinter"
@onready var fruit_button: Button = $FruitButton
@onready var fruit: Area2D = $Fruit

@export var imagePath = "res://assets/sprites/"
@export var imageName = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	imagePath += imageName + ".png"
	fruit.sprite_2d.texture = load(imagePath)
	fruit_button.modulate.a = 0.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func reset() -> void:
	dropoff_box.reset()
	fruit.reset()
