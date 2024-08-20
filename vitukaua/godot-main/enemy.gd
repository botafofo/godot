extends RigidBody2D

@onready var anim = $Anim

# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy_types = anim.SpriteFrames.get_animation_name()
	anim.play(enemy_types[randi() % enemy_types.size()])
	print(enemy_types)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	


func _on_visible_screen_exited():
	queue_free()
