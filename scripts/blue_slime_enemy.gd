extends Node2D

const speed = 200

var direction = -1

@onready var ray_cast_rcorner = $RayCastrightcorner
@onready var ray_cast_lcorner = $RayCastleftcorner
@onready var enemy = $AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:

	if not ray_cast_rcorner.is_colliding():
		direction = -1
		enemy.flip_h = false
	if not ray_cast_lcorner.is_colliding():
		direction = 1
		enemy.flip_h = true
	
	position.x += direction * speed * _delta
	
