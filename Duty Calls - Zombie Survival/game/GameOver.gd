extends Control

#sets labels of scene when it is loaded
func _ready():
	$ButtonContainer/Button.grab_focus()
	$HBoxContainer/ValuesContainer/ZombiesKilledValue.text = str(Global.kills)
	$HBoxContainer/ValuesContainer/BulletsFiredValue.text = str(Global.bullets_fired)
	$HBoxContainer/ValuesContainer/TimeAliveValue.text = str(Global.play_time_minutes) + " Minutes, " + str(Global.play_time_seconds) + " Seconds"

#resets game statistics and changes the scene
func _on_Button_pressed():
	Global.kills = 0
	Global.revives = 3
	Global.bullets_fired = 0
	Global.play_time_seconds = 0
	Global.play_time_minutes = 0
	Global.current_enemies = 1
	get_tree().change_scene("res://TitleScreen.tscn")
