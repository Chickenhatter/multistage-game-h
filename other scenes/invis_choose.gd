extends CharacterBody2D
var v = 0
var m = 0
var mov = false
var furtogether = false
var together = false
const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var motion = Vector2.ZERO
	v = $"../AnimatedSprite2D".position.x
	m = $".".position.x
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if m > 4:
		if Input.is_action_pressed('ui_a'):
			motion.x -= 1
	if m < 500:
		if Input.is_action_pressed('ui_d'):
			motion.x += 1
	velocity = motion * SPEED
	move_and_slide()
	$"../AnimatedSprite2D".position.y = 40*sin(0.02*v)
	mov = false
	$"../hwd".position.x = $"../AnimatedSprite2D".position.x 
	if (completion.boxx != -100) and (furtogether == true):
		$"../AnimatedSprite2D".position.x = completion.boxx
	elif together == false:
		if (v > m):
			if ((v+3)>m):
				if ((v-3)>m):
					$"../AnimatedSprite2D".position.x -= 3
					mov = true
		if v < m:
			if ((v+3)<m):
				if ((v-3)<m):
					$"../AnimatedSprite2D".position.x += 3
					mov = true


func _on_hwd_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		together = true


func _on_hwd_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		together = false


func _on_furthgether_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		furtogether = true


func _on_furthgether_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		furtogether = false
