extends Node2D
var unsee = false
var pathfin = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../Node2D2/CharacterBody2D/Unsee".self_modulate.a = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if unsee == true:
		$"../Node2D2/CharacterBody2D/Unsee".self_modulate.a += 0.1
	if pathfin == true:

func _on_death_plane_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		unsee = true
		pathfin = true


func _on_finish_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		unsee = true
		pathfin = true
