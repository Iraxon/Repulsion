extends "res://entity/abstract_soul.gd"

func _init(t: RPSNEntity = null):
	if (t != null):
		self.target = t

func send_action(delta: float) -> void:
	target.act(
		delta,
		Input.get_vector("Left", "Right", "Up", "Down"),
		Input.is_action_pressed("Sprint")
	)
	self.global_transform = target.global_transform.translated(target.head_offset)
