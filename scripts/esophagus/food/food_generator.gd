extends Node
class_name FoodGenerator

const FOOD_SPAWN_TIMEOUT: float = 3.5
const FOOD_SPAWN_AMOUNT: int = 1

const LEFT_X_BOUNDARY: int = 165
const RIGHT_X_BOUNDARY: int = 960

# Screen boundaries
var screen: Vector2
var screen_width: float
var screen_height: float

var FrenchFries := preload("res://scenes/esophagus/food/FrenchFries.tscn")
var Groceries := preload("res://scenes/esophagus/food/Carrot.tscn")
var Carrot := preload("res://scenes/esophagus/food/Groceries.tscn")

var food_objects := [FrenchFries, Groceries, Carrot]


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
	on_spawn_food_piece()

func on_spawn_food_piece() -> void:
	var food: Food
	var index = randi_range(0, 2)
	var object = food_objects[index]
	food = object.instantiate()
	food.create(generate_random_position())
	add_child(food)

func generate_random_position() -> Vector2:
	var x_pos := randf_range(LEFT_X_BOUNDARY+5, RIGHT_X_BOUNDARY-10)
	return Vector2(x_pos, screen_height+30)
