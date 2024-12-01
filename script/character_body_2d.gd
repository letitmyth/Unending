class_name player extends CharacterBody2D


var move_speed : float = 150.0
var score = 0
var breakable = false

func _ready():
	pass

func _process( delta ):
	
	var direction : Vector2 = Vector2.ZERO
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	
	velocity = direction * move_speed * delta
	
	pass
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * move_speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		
	if velocity.x != 0:
		$AnimatedSprite2D.animation = "walk"
		$AnimatedSprite2D.flip_v = false
	# See the note below about the following boolean assignment.
		$AnimatedSprite2D.flip_h = velocity.x < 0
	

func _physics_process( delta ):
	move_and_slide()
