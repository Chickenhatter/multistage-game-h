extends Node2D
var change = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if completion.nextcall == 1:
		await get_tree().create_timer(1.0).timeout
		if (completion.boxnum == 1):
			completion.nextcall = 0
			get_tree().change_scene_to_file('res://level/level_one.tscn')
		elif completion.boxnum == 2:
			completion.nextcall = 0
			get_tree().change_scene_to_file('res://level/level_two.tscn')
		elif completion.boxnum == 3:
			completion.nextcall = 0
			get_tree().change_scene_to_file('res://level/level_three.tscn')
		elif completion.boxnum == 4:
			completion.nextcall = 0
			get_tree().change_scene_to_file('res://level/level_four.tscn')
		elif completion.boxnum == 5:
			completion.nextcall = 0
			get_tree().change_scene_to_file('res://level/level_five.tscn')
		elif completion.boxnum == 6:
			completion.nextcall = 0
			get_tree().change_scene_to_file('res://level/level_six.tscn')
		elif completion.boxnum == 7:
			completion.nextcall = 0
			get_tree().change_scene_to_file('res://level/level_seven.tscn')
		else:
			print('something broke :cryin:')
