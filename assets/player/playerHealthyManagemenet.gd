extends Node

var maxHearts: int = 3
var currentHearts: int = 3

func _ready():
	update_heart_ui()

func update_heart_ui():
	

func get_current_hearts() -> int:
	return currentHearts

func decrease_hearts(amount: int = 1):
	currentHearts = clamp(currentHearts - amount, 0, maxHearts)
	update_heart_ui()
	
	if currentHearts == 0:
		return null
