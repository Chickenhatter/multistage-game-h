extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(completion.boxx)


func _on_one_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = 88
		completion.boxnum = 1

func _on_one_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if completion.warn == 0:
			completion.boxx = -100
			completion.boxnum = 0


func _on_two_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = 168
		completion.boxnum = 2


func _on_two_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if completion.warn == 0:
			completion.boxx = -100
			completion.boxnum = 0


func _on_three_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = 249
		completion.boxnum = 3


func _on_three_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if completion.warn == 0:
			completion.boxx = -100
			completion.boxnum = 0


func _on_four_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = 328
		completion.boxnum = 4


func _on_four_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if completion.warn == 0:
			completion.boxx = -100
			completion.boxnum = 0


func _on_five_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = 392
		completion.boxnum = 5


func _on_five_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if completion.warn == 0:
			completion.boxx = -100
			completion.boxnum = 0


func _on_six_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = 456
		completion.boxnum = 6


func _on_six_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if completion.warn == 0:
			completion.boxx = -100
			completion.boxnum = 0

func _on_seven_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx =  $seven/seven/CollisionShape2D.global_position.x
		completion.boxnum = 7


func _on_seven_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if completion.warn == 0:
			completion.boxx = -100
			completion.boxnum = 0


func _on_eight_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx =  $eight/eight/CollisionShape2D.global_position.x
		completion.boxnum = 8


func _on_eight_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if completion.warn == 0:
			completion.boxx = -100
			completion.boxnum = 0


func _on_nine_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_nine_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
