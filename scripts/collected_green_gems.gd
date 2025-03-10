extends Label

func _process(_delta):
	if GameManager.green_gems < 3  and GameManager.green_gems != 1 and GameManager.green_gems != 0:
		self.text = "you collected " + str(GameManager.green_gems) + " green gems"
	elif GameManager.green_gems == 3:
		self.text = "you collected every green gem"
	elif GameManager.green_gems == 1:
		self.text = "you collected " + str(GameManager.green_gems) + " green gem"
	elif GameManager.green_gems == 0:
		self.text = "you didn't collect any green gems"
