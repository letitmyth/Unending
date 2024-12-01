extends StaticBody2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var sprite = $AnimatedSprite2D


func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
		Global.key = true
		print(Global.key)
		self.queue_free()
