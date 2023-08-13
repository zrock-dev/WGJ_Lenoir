extends CharacterBody2D
class_name Player

const MOVE_SPEED: int = 100
const JUMP_SPEED: int = 500

const GRAVITY: float = 9.81
 

func _physics_process(_delta):
	var direction = Input.get_axis("left", "rigth")
	velocity.x = MOVE_SPEED * direction
	
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y -= JUMP_SPEED
		
	velocity.y += GRAVITY
	
	move_and_slide()
	

