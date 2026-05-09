extends CharacterBody2D
var v = false


func _physics_process(_delta: float) -> void:
	if v == true:
		var movement = Vector2.ZERO
		movement.x += 1
		velocity = movement * 40
	move_and_slide()

func _on_anti_mover_char_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		v = true
