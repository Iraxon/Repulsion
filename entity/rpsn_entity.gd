class_name RPSNEntity extends CharacterBody2D

@export var speed := 179.2 # Average human walking speed
@export var sprint_multiplier := 4.5 # From average human stats
@export var acceleration := 1612.8 # Two seconds to/from full sprint

func _process(delta: float) -> void:
	velocity = velocity.move_toward(
		Input.get_vector("Left", "Right", "Up", "Down")
			* (4.5 if Input.is_action_pressed("Sprint") else 1)
			* speed,
		acceleration * delta
	)
	move_and_slide()
