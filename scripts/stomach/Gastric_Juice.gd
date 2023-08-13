extends RigidBody2D
class_name Gastric_Juice

const ELEVATION_SPEED: float = 0.3

func _ready():
	$AnimatedSprite2D.play("move")

func _process(delta):
	position.y -= ELEVATION_SPEED
