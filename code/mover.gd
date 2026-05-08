extends CharacterBody2D
var v = 0
var a = 0
const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var movement = Vector2.ZERO
	v = sin(a/1)
	print(v)
	a += 0.1
	if $".".position.y >= 0:
		a = 0
	if v < 0:
		movement.y += 1
	else:
		movement.y -= 1
	velocity = movement * 100
	move_and_slide()
