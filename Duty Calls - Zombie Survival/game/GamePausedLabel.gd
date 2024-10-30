extends Label

func _ready():
	if Global.pause_menu_active == true:
		visible = true
	else:
		visible = false
