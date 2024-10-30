extends KinematicBody2D

#variable needed for moving the node
var motion = Vector2()

func _physics_process(delta):
	#gets the player node
	var Player = get_parent().get_node("Player")
	
	#sets node position and gets position of player node
	position += (Player.position - position)/50
	look_at(Player.position)
	
	#AI automatically moves towards position of player
	move_and_collide(motion)
	

func _on_Area2D_body_entered(body):
	#despawns/kills sprite and increments & decrements values
	if "Bullet" in body.name:
		Global.kills += 1
		Global.current_enemies -= 1
		queue_free()
