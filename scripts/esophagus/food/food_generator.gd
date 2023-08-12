extends Node
class_name FoodGenerator

const FOOD_SPAWN_TIMEOUT: float = 2.0
const FOOD_SPAWN_AMOUNT: int = 2

# Screen boundaries
var screen: Vector2
var screen_width: float
var screen_height: float

var FoodScene := preload("res://scenes/esophagus/food/FrenchFries.tscn")

func _ready():
	var timer: Timer
	timer = Timer.new()
	timer.timeout.connect(on_spawn_food_piece)
	timer.set_wait_time(FOOD_SPAWN_TIMEOUT)
	timer.autostart = true
	
	screen = get_viewport().get_visible_rect().size
	screen_width = screen.x
	screen_height = screen.y
	
	add_child(timer)

func on_spawn_food_piece() -> void:
	var food: Food
	for element in range(FOOD_SPAWN_AMOUNT-1):
		food = FoodScene.instantiate()
		food.create(generate_random_position())
		add_child(food)

func generate_random_position() -> Vector2:
	var x_pos := randf_range(0, screen_width)
	return Vector2(x_pos, screen_height)
