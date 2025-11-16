extends Button

var complex

@onready var canvas = get_node("/root/Node2D/uis/choice")
@onready var holder = get_node("/root/Node2D/holder")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _on_pressed() -> void:
	canvas.visible = false
	holder.madeDecision = complex
