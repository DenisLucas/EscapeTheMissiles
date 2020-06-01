extends Node2D

func game_over() -> void:
	get_tree().reload_current_scene()
	print("hit")


func new_game() -> void:
	$"Hud/start button".hide()
	$Hud/Label.hide()
	$Player.show()
