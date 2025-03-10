extends AnimatedSprite2D


func _on_yellow_coin_body_entered(_body):
	GameManager.coins += 1
	queue_free()
