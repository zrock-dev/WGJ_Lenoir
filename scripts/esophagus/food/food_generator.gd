extends Node

var timer: Timer
const FOOD_SPAWN_TIMEOUT: int = 0.5
const FOOD_SPAWN_AMOUNT: int = 2

# Screen boundaries
var screen: Vector2
var screen_width: int
var screen_height: int

func _ready():
	timer = Timer.new()
	timer.connect("spawn_timeout", on_spawn_food_piece)
	timer.set_wait_time(FOOD_SPAWN_TIMEOUT)
	timer.autostart = true
	
	screen = get_viewport().get_visible_rect().size
	screen_width = screen.x
	screen_height = screen.y
	
	add_child(timer)

func on_spawn_food_piece() -> void:
	var food: Food
	for element in range(FOOD_SPAWN_AMOUNT-1):
		food = Food.new(generate_random_position())
		add_child(food)

func generate_random_position() -> Vector2:
	var x_pos := randi_range(0, screen_width)
	return Vector2(x_pos, screen_height)
