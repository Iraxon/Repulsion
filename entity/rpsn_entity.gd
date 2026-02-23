class_name RPSNEntity extends CharacterBody2D

@export var speed := 179.2 # Average human walking speed
@export var sprint_multiplier := 4.5 # From average human stats
@export var acceleration := 1612.8 # Half second to/from full sprint
@export var deceleration_multiplier := 1
@export var head_offset := Vector2(0, -224) # Used for placing the soul

signal update(delta: float)

func _physics_process(delta: float) -> void:
	update.emit(delta)

## Should be called on_physics_process by the soul controlling this entity
func act(delta: float, movement: Vector2, sprint: bool) -> void:
	velocity = velocity.move_toward(
		movement * (sprint_multiplier if sprint else 1.0) * speed,
		acceleration * (deceleration_multiplier if velocity.dot(movement) <= 0 else 1) * delta
	)
	move_and_slide()
