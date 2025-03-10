extends AnimatedSprite2D


func _on_green_gem_body_entered(_body):
	GameManager.green_gems += 1
	queue_free()
