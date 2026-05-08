extends Node2D
var unsee = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if unsee == true:
		$"Blanker".self_modulate.a += 0.03


func _on_button_pressed() -> void:
	unsee = true
	await get_tree().create_timer(2.0).timeout
	completion.boxx = 0
	get_tree().change_scene_to_file('res://other scenes/levelchoose.tscn')
	completion.boxx = 0
