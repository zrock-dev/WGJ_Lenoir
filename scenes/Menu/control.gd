extends Control

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/player/Player.tscn") # Replace with function body.

func _on_button_2_pressed():
	get_tree().quit()
