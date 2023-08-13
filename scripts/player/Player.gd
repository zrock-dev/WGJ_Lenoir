extends CharacterBody2D
class_name Player

const MOVE_SPEED: int = 100
const JUMP_SPEED: int = 500

const GRAVITY: float = 9.81
 

func _physics_process(_delta):
	var direction = Input.get_axis("left", "rigth")	
	
	$AnimatedSprite2D.play("fall")
	
	
	velocity.x = MOVE_SPEED * direction
	
	
	move_and_slide()
	
