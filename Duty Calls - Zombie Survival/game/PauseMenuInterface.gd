extends VBoxContainer

func _ready():
	if Global.pause_menu_active == true:
		visible = true
	else:
		visible = false


func _on_ResumeGameButton_pressed():
	Global.pause_menu_active == false
	get_tree().paused = not get_tree().paused
