extends CharacterBody2D
var v = 0
var m = 0
const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:

	v = $"../AnimatedSprite2D".position.x
	m = $".".position.x
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	var direction := Input.get_axis("ui_a", "ui_d")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	$"../AnimatedSprite2D".position.y = sin(v)
	if v > m:
		$"../AnimatedSprite2D".position.x -= 1
	if v < m:
		$"../AnimatedSprite2D".position.x += 1
