extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const leftBound = 0
const rightBound = 2000


func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("moveLeft", "moveRight")
	if direction:
		if direction > 0 and position.x < 1000:
			velocity.x = direction * SPEED
			if position.x < 0 or position.x > 2000:
				velocity.x = 0	
			
			
		elif direction < 0 and position.x > 0:
			velocity.x = direction * SPEED
			if position.x < 0 or position.x > 2000:
					velocity.x = 0	
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if position.x < 0 or position.x > 2000:
		velocity.x = 0	

	move_and_slide()
