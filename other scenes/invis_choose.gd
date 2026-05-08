extends CharacterBody2D
var v = 0
var m = 0
var mov = false
var deltar = 0
var furtogether = false
var together = false
var inside = false
var next = false
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _ready() -> void:
	$".".position.x = completion.boxx

func _physics_process(delta: float) -> void:
	deltar = delta
	$"Unsee".self_modulate.a -= 0.03
	var motion = Vector2.ZERO
	v = $"../AnimatedSprite2D".position.x
	m = $".".position.x
	if Input.is_action_just_pressed("ui_accept"):
		if inside == true:
			completion.warn = 1
			next = true
	if m > 4:
		if Input.is_action_pressed('ui_a'):
			motion.x -= 1
	if m < completion.cap:
		if Input.is_action_pressed('ui_d'):
			motion.x += 1
	velocity = motion * SPEED
	move_and_slide()
	if next == false:
		$"../AnimatedSprite2D".position.y = 40*sin(0.02*v)
	mov = false
	$"../hwd".position.x = $"../AnimatedSprite2D".position.x 
	if (completion.boxx != -100) and (furtogether == true):
		$"../AnimatedSprite2D".position.x = completion.boxx
		inside = true
	elif together == false:
		inside = false
		if (v > m):
			if ((v+4)>m):
				if ((v-4)>m):
					$"../AnimatedSprite2D".position.x -= 3
					mov = true
		if v < m:
			if ((v+4)<m):
				if ((v-4)<m):
					$"../AnimatedSprite2D".position.x += 3
					mov = true
	if next == true:
		$"../AnimatedSprite2D".play('up')
		$"Unsee".self_modulate.a += 0.11
		completion.nextcall = 1
		$"../AnimatedSprite2D".position.y -= 3
	elif Input.is_action_pressed('ui_a'):
		$"../AnimatedSprite2D".play('left')
	elif Input.is_action_pressed('ui_d'):
		$"../AnimatedSprite2D".play('right')
	else:
		$"../AnimatedSprite2D".play('standing')


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
