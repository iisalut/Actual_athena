extends Button

var complex

@onready var canvas = get_node("/root/Node2D/uis/choice")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _on_pressed() -> void:
	print(complex)
	canvas.visible = false
	
