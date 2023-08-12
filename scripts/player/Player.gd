extends CharacterBody2D

@export var move_speed: int = 100
@export var jump_speed: int = 200

const gravity = 9.81
 

func _physics_process(delta):
	var direction = Input.get_axis("left", "rigth")
	velocity.x = move_speed * direction
	
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y -= jump_speed
		
	velocity.y += gravity
	
	move_and_slide()
	

