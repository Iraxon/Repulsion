extends Node

const MENU = preload("res://start_menu.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var menu = MENU.instantiate()

func handle_menu_choice(i: int):
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
