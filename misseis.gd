extends KinematicBody2D

func _ready() -> void:
	$Timer.start()
func _physics_process(delta: float) -> void:
	var velocidade = Vector2(0, -4)
	velocidade += velocidade * delta
	print(velocidade)
	velocidade = move_and_collide(velocidade)

func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()


func _on_Timer_timeout() -> void:
	$AnimatedSprite.play()
