extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if Global.coin_ending == false:
		if body.is_in_group("player"):
			Global.score += 1
			print(Global.score)
			self.queue_free()
		if Global.score == 22:
			Global.ending += 1
			Global.coin_ending = true
			print(Global.coin_ending)
			get_tree().change_scene_to_file("res://scene/ending_counter.tscn")
	else:
		return
