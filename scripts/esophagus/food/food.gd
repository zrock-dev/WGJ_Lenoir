extends Area2D
class_name Food

func create(new_pos: Vector2):
	self.position = new_pos
	
func _process(_delta):
	if position.y == 0:
		$Sprite2D.visible = false
		get_tree().queue_delete(self)
		
	self.position = Vector2(position.x, (position.y - 0.5))
