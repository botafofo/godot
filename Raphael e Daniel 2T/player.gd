extends Area2D

signal hit
const SPEED := 400
var screen_size
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Input.get_vector("move_left","move_right","move_up", "move_down")
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * SPEED 
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
				   


func _on_body_entered(body):
	pass # Replace with function body.
