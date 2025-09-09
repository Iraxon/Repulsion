class_name RPSNSoul extends Node2D

@export var target: RPSNEntity = null:
	set(v):
		if target != null:
			target.update.disconnect(send_action)
		if v != null:
			v.update.connect(send_action)
		target = v

func _init(t: RPSNEntity = null):
	if (t != null):
		self.target = t

func send_action(delta: float) -> void:
	target.act(
		delta,
		Input.get_vector("Left", "Right", "Up", "Down"),
		Input.is_action_pressed("Sprint")
	)
	self.global_transform = target.global_transform
