extends Node2D




func game_over() -> void:
	get_tree().reload_current_scene()
	print("hit")
