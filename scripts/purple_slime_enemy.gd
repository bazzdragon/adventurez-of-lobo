extends CharacterBody2D

const speed = 200

var direction = -1

var is_player_in_range: bool = false

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	if not is_on_floor():
		velocity.y += gravity * _delta
	if is_player_in_range == true:
		position.x += direction * speed * _delta
	
	move_and_slide()






func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):  # Assuming player is in "player" group
		is_player_in_range = true
