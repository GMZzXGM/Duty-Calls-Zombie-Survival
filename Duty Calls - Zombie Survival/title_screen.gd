extends Control

#variable will be used to preload path for next scene
var scene_path_to_load

#Enables keyboard support for the menu
func _ready():
	$Menu/CenterRow/Buttons/StartGameButton.grab_focus()

#preloads the path for the next scene and starts the fade transition
func _on_StartGameButton_pressed():
	get_tree().change_scene("res://game/World.tscn")

#preloads the path for the next scene and starts the fade transition
func _on_HowToPlayButton_pressed():
	scene_path_to_load = 'res://game/HowToPlay.tscn'
	$FadeIn.show()
	$FadeIn.fade_in()

#preloads the path for the next scene and starts the fade transition
func _on_ViewMapButton_pressed():
	scene_path_to_load = 'res://game/MapPreview.tscn'
	$FadeIn.show()
	$FadeIn.fade_in()

#ends the entire program
func _on_QuitGame_pressed():
	get_tree().quit()

#loads into the next scene after transition
func _on_FadeIn_fade_finished():
	get_tree().change_scene(scene_path_to_load)
