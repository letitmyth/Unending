extends StaticBody2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var sprite = $AnimatedSprite2D


func _ready():
	interaction_area.interact = Callable(self, "_mine_block")
	
func _mine_block():
	if Global.pick == true:
		self.queue_free()
