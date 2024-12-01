extends Control

@onready var main = $"../../"

func _on_resume_pressed() -> void:
	main.pauseMenu()


func _on_quit_pressed() -> void:
	if Global.quit_ending == false:
		Global.ending += 1
		Global.quit_ending = true
		get_tree().change_scene_to_file("res://scene/ending_counter.tscn")
