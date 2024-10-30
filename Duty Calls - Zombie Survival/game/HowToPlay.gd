extends Control

#triggers the fade out function and enables keyboard support for the button
func _ready():
	$FadeOut.show()
	$FadeOut.fade_out()
	$VBoxContainer/Button.grab_focus()

#changes scene
func _on_Button_pressed():
	get_tree().change_scene('res://TitleScreen.tscn')
