extends Node2D


func _ready() -> void:
	$MissileTimer.start()
	
func game_over() -> void:
	get_tree().reload_current_scene()
	print("hit")


func _on_MissileTimer_timeout() -> void:
	$misseis/AnimationPlayer.play("left_to_right")
	
