extends Node2D

@onready var timer = get_node("Timer")
@onready var teardrops = get_node("teardrops")
@onready var player = get_node("player")
@onready var heart3 = get_node("Control/CanvasLayer/heart3")
@onready var heart2 = get_node("Control/CanvasLayer/heart2")
@onready var heart1 = get_node("Control/CanvasLayer/heart1")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.timeout.connect(_on_timeout)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_timeout(): #spawn teardrops i guess
	var tempdrop = teardrops.duplicate()
	tempdrop.position = Vector2(randi_range(0, get_viewport().get_visible_rect().size.x), -get_viewport().get_visible_rect().size.y+400)
	teardrops.get_parent().add_child(tempdrop)
	tempdrop.lifetime.start()
	tempdrop.speed.start()
	
func _on_teardrops_body_entered(body: Node2D) -> void: #player health and hearts and stuff.,,
	if(player.health==3):
		heart3.visible = false
	elif(player.health==2):
		heart2.visible = false
	elif(player.health==1):
		heart1.visible = false
	elif(player.health==0):
		print("GAME OVER sighh")
	player.health-=1
