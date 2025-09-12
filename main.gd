extends Node

const MENU := preload("res://mission/menu.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var menu := MENU.instantiate()
	add_child(menu)

func handle_menu_choice(i: int):
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	pass
