extends Node

@export var target: RPSNEntity = null:
	set(v):
		if target != null:
			target.update.disconnect(send_action)
		if v != null:
			v.update.connect(send_action)
		target = v

func send_action(_delta: float) -> void:
	assert(false, "Abstract method not overridden")
