extends CharacterBody2D
class_name Player

const MOVE_SPEED: int = 100
const JUMP_SPEED: int = 500

const GRAVITY: float = 9.81
 

func _physics_process(_delta):
	var direction = Input.get_axis("left", "rigth")	
		
	velocity.x = MOVE_SPEED * direction
	
	$AnimatedSprite2D.flip_h = direction < 0
	
	if is_on_floor():
		if velocity.x > 0:
			$AnimatedSprite2D.play("walk")
		else:
			$AnimatedSprite2D.play("idle")
			
	else :
		if velocity.y < 0:
			$AnimatedSprite2D.play("jump")
		else:
			$AnimatedSprite2D.play("fall")
		
		
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y -= JUMP_SPEED
		
	velocity.y += GRAVITY
	
	move_and_slide()
	
