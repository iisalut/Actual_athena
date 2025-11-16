extends Area2D

@onready var speed = get_node("speed")
@onready var lifetime = get_node("lifetime")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	speed.timeout.connect(_move)
	lifetime.timeout.connect(_death)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _move():
	position.y+=10
	
func _death():
	queue_free()
	
