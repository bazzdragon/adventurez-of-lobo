extends RigidBody2D


func _on_detectionarea_body_entered(body):
	if body.is_in_group("player"):
		#set_deferred("freeze", false)
		$Timer.start()


func _on_timer_timeout():
	set_deferred("freeze", false)
