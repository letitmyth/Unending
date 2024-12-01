extends Control



func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/game.tscn")
