extends KinematicBody2D

func _ready() -> void:
	$Timer.start()


func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()


func _on_Timer_timeout() -> void:
	$AnimatedSprite.play()
