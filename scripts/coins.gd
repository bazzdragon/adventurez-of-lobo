extends Label


func _process(_delta):
	self.text = ":" + str(GameManager.coins)
