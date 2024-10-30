extends Control

signal map_chosen

#triggers the fade out function
func _ready():
	$FadeOut.show()
	$FadeOut.fade_out()
	#enables keyboard support for buttons
	$MapsContainer/HouseMapContainer/VBoxContainer/HouseMapButton.grab_focus()
	
	$MapsContainer/HouseMapContainer/VBoxContainer/HouseMapButton.text = 'Map Selected'
	$MapsContainer/GarageMapContainer/VBoxContainer/GarageMapButton.text = 'Select'
	
#changes scene
func _on_BackButton_pressed():
	get_tree().change_scene('res://TitleScreen.tscn')

func _on_HouseMapButton_pressed():
	emit_signal("map_chosen", "house")
	$MapsContainer/HouseMapContainer/VBoxContainer/HouseMapButton.text = 'Map Selected'
	$MapsContainer/GarageMapContainer/VBoxContainer/GarageMapButton.text = 'Select'

func _on_GarageMapButton_pressed():
	emit_signal("map_chosen", "garage")
	$MapsContainer/GarageMapContainer/VBoxContainer/GarageMapButton.text = 'Map Selected'
	$MapsContainer/HouseMapContainer/VBoxContainer/HouseMapButton.text = 'Select'
