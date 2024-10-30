extends Node2D

func _on_SpawnTimer_timeout():
	var buffer
	buffer = 0
	#nested if statements for only allowing up to 24 enemy sprites at any one time
	while Global.current_enemies < 24 and buffer == 0:
		randomize()
		var random_value_generator = rand_range(1, 7)
		var random_value = int(random_value_generator)
		
		#if statements for instanciating an enemy sprite
		if random_value == 1 and random_value:
			var enemy_scene = load("res://game/Enemy.tscn")
			var enemy = enemy_scene.instance()
			add_child(enemy)
			Global.current_enemies += 1
		elif random_value == 2:
			var enemy_scene = load("res://game/Enemy_spawn_2.tscn")
			var enemy = enemy_scene.instance()
			add_child(enemy)
			Global.current_enemies += 1
		elif random_value == 3:
			var enemy_scene = load("res://game/Enemy_spawn_3.tscn")
			var enemy = enemy_scene.instance()
			add_child(enemy)
			Global.current_enemies += 1
		elif random_value == 4:
			var enemy_scene = load("res://game/Enemy_spawn_4.tscn")
			var enemy = enemy_scene.instance()
			add_child(enemy)
			Global.current_enemies += 1
		elif random_value == 5:
			var enemy_scene = load("res://game/Enemy_spawn_5.tscn")
			var enemy = enemy_scene.instance()
			add_child(enemy)
			Global.current_enemies += 1
		elif random_value == 6 or random_value == 7:
			var enemy_scene = load("res://game/Enemy_spawn_6.tscn")
			var enemy = enemy_scene.instance()
			add_child(enemy)
			Global.current_enemies += 1
		
		buffer = 1

#function deals with game timer for player statistics
func _on_WorldTimer_timeout():
	if Global.play_time_seconds == 59:
		Global.play_time_minutes += 1
		Global.play_time_seconds = 0
	else:
		Global.play_time_seconds += 1
