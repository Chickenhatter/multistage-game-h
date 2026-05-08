extends Node2D
var unsee = false
var pathfin = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	completion.warn = 0
	$"../Node2D2/CharacterBody2D/Unsee".self_modulate.a = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(completion.boxx)
	if unsee == false:
		if $"../Node2D2/CharacterBody2D/Unsee".self_modulate.a > 0:
			$"../Node2D2/CharacterBody2D/Unsee".self_modulate.a -= 0.06
	if unsee == true:
		$"../Node2D2/CharacterBody2D/Unsee".self_modulate.a += 0.16
	

func _on_death_plane_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		unsee = true


func _on_finish_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		unsee = true
		await get_tree().create_timer(2.0).timeout
		if completion.level <= 0:
			completion.level = 1
			completion.cap = 89
		get_tree().change_scene_to_file('res://other scenes/levelchoose.tscn')


func _on_trudeth_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file('res://other scenes/levelchoose.tscn')
