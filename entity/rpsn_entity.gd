class_name RPSNEntity extends CharacterBody2D

@export var speed := 179.2 # Average human walking speed
@export var sprint_multiplier := 4.5 # From average human stats
@export var acceleration := 1612.8 # Half second to/from full sprint

signal update(delta: float)

func _physics_process(delta: float) -> void:
	update.emit(delta)

## Should be called on_physics_process by the soul controlling this entity
func act(delta: float, movement: Vector2, sprint: bool) -> void:
	velocity = velocity.move_toward(
		movement * (sprint_multiplier if sprint else 1.0) * speed,
		acceleration * delta
	)
	move_and_slide()
	var count := get_slide_collision_count()
	if (count > 0):
		for i in count:
			var collision := get_slide_collision(i)
			print(collision.get_normal())
			print(collision.get_collider())
