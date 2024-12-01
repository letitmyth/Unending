extends Area2D

# Signal to notify when the button is pressed
signal button_pressed

# Whether the button is currently activated
var is_pressed : bool = false

# Reference to the AnimationPlayer node

# Called every frame
func _physics_process(delta: float) -> void:
	for body in get_overlapping_bodies():
		if Global.button_ending == false:
			if body.is_in_group("player"):
				if not is_pressed:
					is_pressed = true
					emit_signal("button_pressed")
					print("pressed")
					$AnimatedSprite2D.play("press")
					await get_tree().create_timer(0.2).timeout
					Global.ending += 1
					Global.button_ending = true
					get_tree().change_scene_to_file("res://scene/ending_counter.tscn")
					return
		else:
			$AnimatedSprite2D.play("press")
			return
					
