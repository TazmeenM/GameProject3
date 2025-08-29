extends Node2D

@onready var instruction_image: Sprite2D = $InstructionImage
@onready var next_button: Button = $NextButton
@onready var previous_button: Button = $PreviousButton

var imageNumber = 0
var imageDirectoryRoot = "res://assets/sprites/howToPlay"
var images = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	loadImage()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_next_button_pressed() -> void:
	if imageNumber < images.size() - 1:
		imageNumber += 1
		loadImage()
		if imageNumber == images.size() - 1:
			next_button.text = "Finish"
	else:
		next_button.text = "Next"
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_previous_button_pressed() -> void:
	if imageNumber > 0:
		imageNumber -= 1
		loadImage()

func loadImage() -> void:
	instruction_image.texture = load(imageDirectoryRoot + images[imageNumber] + ".png")
