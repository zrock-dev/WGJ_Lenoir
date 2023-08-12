extends Area2D
class_name Food

func create(new_pos: Vector2):
	self.position = new_pos
	
func _process(_delta):
	self.position = Vector2(position.x, position.y - (position.y * .001))
