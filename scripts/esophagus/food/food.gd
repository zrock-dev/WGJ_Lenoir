extends Area2D
class_name Food

func create(new_pos: Vector2):
	self.position = new_pos
	
func _process(_delta):
	if position.y == 0:
		$Sprite2D.visible = false
		get_tree().queue_delete(self)
		
	self.position = Vector2(position.x, (position.y - 0.5))

func _on_body_entered(body):
	get_tree().change_scene_to_file("res://scenes/game_over/Game_Over.tscn")
	pass # Replace with function body.
