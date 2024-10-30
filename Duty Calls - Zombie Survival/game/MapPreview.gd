extends Control

#triggers fade out function and enables keyboard support for the button
func _ready():
	$FadeOut.show()
	$FadeOut.fade_out()
	$BackButtonContainer/BackButton.grab_focus()

#changes the scene upon button pressed
func _on_Backbutton_pressed():
	get_tree().change_scene("res://TitleScreen.tscn")
