extends CharacterBody2D

@export var move_speed: int = 100

func _physics_process(delta):
	var direction = Vector2(
		Input.get_action_strength("rigth") - Input.get_action_strength("left"), 0
	)
	
	velocity = direction * move_speed
	
	move_and_slide()

