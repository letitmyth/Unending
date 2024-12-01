extends StaticBody2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var sprite = $AnimatedSprite2D


func _ready():
	interaction_area.interact = Callable(self, "_open_door")
	
func _open_door():
	if Global.key == true:
		self.queue_free()
