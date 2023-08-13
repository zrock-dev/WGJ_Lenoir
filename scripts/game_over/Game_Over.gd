extends Control
class_name Game_Over

func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://scenes/stomach/Stomach.tscn")


func _on_quit_pressed():
	get_tree().quit()

