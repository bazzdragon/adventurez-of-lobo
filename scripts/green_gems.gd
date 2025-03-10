extends Label


func _process(_delta):
	self.text = ":" + str(GameManager.green_gems) + "/3"
