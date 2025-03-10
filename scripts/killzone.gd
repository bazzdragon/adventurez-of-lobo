extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1.0
	#get_node("Camera2D").smoothing_enabled = true
	get_tree().reload_current_scene()
	GameManager.green_gems = 0
	GameManager.coins = 0
