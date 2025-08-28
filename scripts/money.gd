extends Node2D

@onready var money_counter: Label = $MoneyCounter

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	money_counter.text = "Money: " + str(Resources.money)
	
