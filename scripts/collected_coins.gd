extends Label

func _process(_delta):
	if GameManager.coins < 40 and GameManager.coins != 1 and GameManager.coins != 0:
		self.text = "you collected " + str(GameManager.coins) + " coins"
	elif GameManager.coins == 40:
		self.text = "you collected every coin"
	elif GameManager.coins == 1:
		self.text = "you collected " + str(GameManager.coins) + " coin"
	elif GameManager.coins == 0:
		self.text = "you didn't collect any coins"
