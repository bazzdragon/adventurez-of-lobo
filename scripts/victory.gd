extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/node_2d-OSAO-5CD40268RB.tscn")
	GameManager.green_gems = 0
	GameManager.coins = 0

func _on_quit_button_pressed() -> void:
	get_tree().quit()



func _on_menubutton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	GameManager.green_gems = 0
	GameManager.coins = 0
