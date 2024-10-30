extends RigidBody2D

#despawns the bullet instance
func _on_DespawnTimer_timeout():
	queue_free()
