extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.





func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/node_2d-OSAO-5CD40268RB.tscn")
