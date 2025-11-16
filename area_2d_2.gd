extends Area2D

var entered= false

			
func _on_body_entered(body: PhysicsBody2D) -> void:
	entered=true


func _on_body_exited(body: Node2D) -> void:
	entered=false
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):

			var highest = max(guilt, superiority, inferiority, persecution, martyr)
			
			if highest == superiority:
				get_tree().change_scene_to_file("res://boss_mini_game.tscn")

			elif highest == inferiority:
				get_tree().change_scene_to_file("res://inferiority_minigame.tscn")

			elif highest == guilt:
				get_tree().change_scene_to_file("res://guilt_minigame.tscn")

			elif highest == persecution:
				get_tree().change_scene_to_file("res://persecution_minigame.tscn")

			elif highest == martyr:
				get_tree().change_scene_to_file("res://martyr_minigame.tscn")
