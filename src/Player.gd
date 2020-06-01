extends Area2D

signal hit
var speed = 600
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = Vector2(240,160)
	#$".".hide()

func _process(delta: float) -> void:
	var velocidade = Vector2()
	if Input.is_action_pressed("ui_up"):
		velocidade.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocidade.y += 1
	if Input.is_action_pressed("ui_left"):
		velocidade.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocidade.x += 1
	if velocidade.length() > 0:
		position = velocidade.normalized() * speed
	position += velocidade * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
