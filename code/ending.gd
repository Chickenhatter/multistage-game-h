extends Node2D
var change = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if change == false:
		if $Sprite2D.self_modulate.a > 0:
			$Sprite2D.self_modulate.a -= 0.01
	else:
		$Sprite2D.self_modulate.a += 0.01


func _on_button_pressed() -> void:
	change = true
	await get_tree().create_timer(5.0).timeout
	get_tree().change_scene_to_file('res://other scenes/start.tscn')
