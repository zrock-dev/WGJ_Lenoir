extends Node2D

func _ready():
	var food_generator = FoodGenerator.new()
	add_child(food_generator)
