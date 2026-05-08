extends CharacterBody2D
var lekel = false

const SPEED = 100.0
const JUMP_VELOCITY = -250.0


func _physics_process(delta: float) -> void:
	if lekel == true:
		var movement = Vector2.ZERO
		movement.y -= 1
		velocity += movement * 1
	if (not is_on_floor()) and (lekel == false) :
		velocity += (get_gravity() * delta * 0.7)
	if Input.is_action_just_pressed("ui_w") and ((is_on_floor()) or (lekel == true)):
		velocity.y = JUMP_VELOCITY
	var direction := Input.get_axis("ui_a", "ui_d")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if not is_on_floor():
		$AnimatedSprite2D.play('up')
	elif Input.is_action_pressed('ui_a'):
		$AnimatedSprite2D.play('left')
	elif Input.is_action_pressed('ui_d'):
		$AnimatedSprite2D.play('right')
	else:
		$AnimatedSprite2D.play('standing')
	move_and_slide()




func _on_anti_mover_char_body_entered(body: Node2D) -> void:
	if body.name == 'CharacterBody2D':
		lekel = true


func _on_anti_mover_char_body_exited(body: Node2D) -> void:
	if body.name == 'CharacterBody2D':
		lekel = false
