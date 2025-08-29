extends Node2D

@onready var gameOverLabel: Label = $GameOverLabel
@onready var sad_face_label: Label = $SadFaceLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#gameOverLabel.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	gameOverLabel.position.y = 120
	gameOverLabel.position.x = 200
	sad_face_label.position.y = 100
	sad_face_label.position.x = 100


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_ok_button_pressed() -> void:
	ShopBuying.reset()
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
