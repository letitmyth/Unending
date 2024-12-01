extends Area2D

func _physics_process(delta: float) -> void:
	for body in get_overlapping_bodies():
		if Global.drown_ending == false:
			if body.is_in_group("player"):
					print("drown")
					$AnimatedSprite2D.play("drown")
					await get_tree().create_timer(3).timeout
					Global.ending += 1
					Global.drown_ending = true
					get_tree().change_scene_to_file("res://scene/ending_counter.tscn")
					return
