extends ColorRect

#sets a signal variable to be returned
signal fade_finished

#plays the fade in animation
func fade_in():
	$AnimationPlayer.play("fade_in")

#returns a signal
func _on_AnimationPlayer_animation_finished(anim_name):
	emit_signal("fade_finished")
