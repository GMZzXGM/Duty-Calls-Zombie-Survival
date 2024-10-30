extends KinematicBody2D

#sets speeds for player and bullet sprites and preloads the bullet sprite
var movespeed = 350
var bullet_speed = 2000
var bullet = preload("res://game/Bullet.tscn")

func _ready():
	pass # Replace with function body.

#entire function deals with the movement of the player node from inputs
func _physics_process(delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("up"):
		motion.y -= 1
	if Input.is_action_pressed("down"):
		motion.y += 1
	if Input.is_action_pressed("right"):
		motion.x += 1
	if Input.is_action_pressed("left"):
		motion.x -= 1
	if Input.is_action_just_pressed("LMB"):
		fire()
	
	motion = motion.normalized()
	motion = move_and_slide(motion * movespeed)
	look_at(get_global_mouse_position())

#instantiates the bullet sprite and assign the necessary values needed
func fire():
	var bullet_instance = bullet.instance()
	bullet_instance.position = get_global_position()
	bullet_instance.rotation_degrees = rotation_degrees
	bullet_instance.apply_impulse(Vector2(), Vector2(bullet_speed, 0).rotated(rotation))
	get_tree().get_root().call_deferred("add_child", bullet_instance)
	Global.bullets_fired += 1

#if statemets for when the player is hit by an enemy which either revives the player or changes scene
func _on_Area2D_body_entered(body):
	if "Enemy" in body.name and Global.revives > 0:
		Global.revives -= 1
		get_tree().reload_current_scene()
	elif "Enemy" in body.name and Global.revives == 0:
		get_tree().change_scene("res://game/GameOver.tscn")




