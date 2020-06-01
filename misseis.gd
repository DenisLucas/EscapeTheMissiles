extends KinematicBody2D

func _ready() -> void:
	$Timer.start()

func _on_Timer_timeout() -> void:
	$AnimatedSprite.play()
