class_name Player_Custom_Parameter
extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0



func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if global_position.x > 400:
		EventBus.aggro.emit(2)
	elif global_position.x > 250:
		EventBus.aggro.emit(1)
	
	move_and_slide()
