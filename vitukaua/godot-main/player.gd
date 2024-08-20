extends Area2D

signal hit
const SPEED := 400
@onready var screen_size = get_viewport_rect().size
@onready var anime = $Anim
@onready var collision = $Collision

func _ready():

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Input.get_vector("move_left","move_right","move_up", "move_down")
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * SPEED 
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
				   

#vereficaçao de colisao de players dos bugs
	func _on_body_entered(body):
	hide()
	hit.emit()
	collision.set_deffered("disabled",true)
	
	
	func sart_pos(pos):
	position = pos
	show()
	collision.disabled = false
	
	
	
	s


	
