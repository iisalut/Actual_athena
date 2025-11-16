extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var button = Button.new()
	button.text = "option 1"
	button.pressed.connect(_button_pressed)
	add_child(button)

func _button_pressed():
	print("hi")
