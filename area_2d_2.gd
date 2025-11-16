extends Area2D

var entered= false

			
func _on_body_entered(body) -> void:
	entered=true


func _on_body_exited(body: Node2D) -> void:
	if entered == true:
		entered = false
		var guilt = get_parent().guilt
		var superiority = get_parent().superiority
		var inferiority = get_parent().inferiority
		var persecution = get_parent().persecution
		var martyr = get_parent().martyr

		var highest = max(guilt, superiority, inferiority, persecution, martyr)
		
		if highest == superiority:
			get_tree().change_scene_to_file("res://skelly_boss_game.tscn")

		elif highest == inferiority:
			get_tree().change_scene_to_file("res://boss_mini_game.tscn")

		elif highest == guilt:
			get_tree().change_scene_to_file("res://guilt.tscn")

		elif highest == persecution:
			get_tree().change_scene_to_file("res://persecution_boss_game.tscn")

		elif highest == martyr:
			get_tree().change_scene_to_file("res://martyr.tscn")
