extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_one_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = 88

func _on_one_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = -100


func _on_two_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = 168


func _on_two_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = -100


func _on_three_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = 249


func _on_three_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = -100


func _on_four_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = 328


func _on_four_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		completion.boxx = -100
