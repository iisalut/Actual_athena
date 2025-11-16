extends Node

#count of complexes-- determine end result
var guilt = 0
var superiority = 0
var inferiority = 0
var persecution = 0
var martyr = 0

#setup array: 10 objects
# [scenario, [decision, complex], [decision, complex], [decision, complex], link to img]
var array = [
	["You are walking by an office building. Amidst the horde of workers within their daily motions, you accidentally bump into a woman holding a large stack of documents. Papers and folders clatter to the dirty sidewalk. The woman abruptly begins shouting profanities and blaming expletives– 'It’s all your fault! What the hell is your problem?!'\n\nWhat do you say?",
		["Apologize profusely. Take the blame. It’s your fault, after all. That means you need to fix it.", "guilt"],
		["Yell back. How dare she blame you? It was her fault, for walking so carelessly, not yours.", "superiority"],
		["Shell up like a turtle. You’re worthless. You get it. You don’t need to hear it.", "inferiority"],
		"res://imgsChoices/fallen_docs.png"
	],
	["As you walk, your toe snags on a crack– you stumble forward, catching yourself just before you fall.You turn, only to realize that it was never a crack after all, but rather, the leg of a desolate, raggedly-clothed man sitting slumped against the wall. He looks up at you with weary, beseeching eyes, ones that, in themselves, seem to communicate an eon of suffering. “Please”, he entreats, voice rasping, “spare just a little”.\n\nWhat do you do?",
		["Give him everything in your wallet. You were planning to buy something, but it’s fine. Perhaps if someone glances, they will praise you?", "martyr"],
		["Pretend not to see or hear the man. What if he tries to do something? What if someone sees you not giving him money, and thinks badly of you?", "persecution"],
		["Look down in disdain. You’re better than this– you don’t need to indulge in it.", "superiority"],
		"res://imgsChoices/homeless_man.png"
	],
	["You stroll by a park, and are greeted with the classic superhero-comic scene: a woman whose cat is stuck in a tree. You watch, somewhat dumbfounded, as she attempts to beckon the cat with wheedling sweet-talk and promises of treats. The cat does not budge.\n\nWhat do you do?",
		["Take it upon yourself and help her. You may injure yourself. But she may revere you.", "martyr"],
		["Walk away without a glance. This doesn’t concern you. Someone like you has better things– more important things– to worry about.", "superiority"],
		["Call the fire department. Not like you’d be able to help. You aren’t capable of it; you aren’t skilled enough.", "inferiority"],
		"res://imgsChoices/cat_on_tree.png"
	],
	["While waiting for a stoplight to turn green, an unfamiliar man runs up to you. He is panting, heaving for breath, perspiration dotting his brow. With an edge of tangible desperation to his voice, he claims that he needs help with something further back behind you.\n\nWhat do you do?",
		["Decline hastily. It’s a trap. He might try to do something.", "persecution"],
		["Enthusiastically agree. Yes, you need to be somewhere, but somebody needs your assistance. You’ll oblige, even if it means sacrificing your own plans.", "martyr"],
		["Fervently apologize, then quickly find someone else who can help. You know you will still feel guilty for hours after the interaction.", "guilt"],
		"res://imgsChoices//man_on_street.png"
	],
	["While making your way down the sidewalk, a vibration from your phone alerts you. You excuse yourself from the crowd to lean up inconspicuously against a brick wall, and you check the notification you have received. Within moments, you’re distracted, engrossed in a text conversation. A few minutes pass, and then a man approaches you. “Excuse me,” he tries to catch your attention.\n\nWhat do you do?",
		["Wave him off. Your attention is already taken by something more relevant to you. He doesn’t matter as much.", "superiority"],
		["Say sorry and quickly move. You must have been in the way. What if you hindered him somehow? You need to be more careful, truly.", "guilt"],
		["Wordlessly hurry away. This can’t be good news. There must be bad intentions at play here.", "persecution"],
		"res://imgsChoices/man_alley.png"
	],
	["Cars speed by at the street intersection you’ve found yourself at. You don’t particularly feel the need to cross just yet, so you just stand and observe. A melody, then, catches your attention. You turn to see a busker singing while strumming an acoustic guitar. It’s something you’ve always wanted to learn, though you never quite reached far with the skill. Transfixed by their show, you almost don’t notice when the pedestrian light turns green. The cars have stopped.\n\nWhat do you do?",
		["Praise them extravagantly, almost forcefully, before crossing the street. Make them know you listened. Make them know that you stopped and appreciated their performance.", "martyr"],
		["Walk across the street without a backward glance. It wasn’t that impressive, anyways. You could do better.", "superiority"],
		["Stay in place, staring. You can’t help the feeling of jealousy that swells involuntarily within you. Yet you cannot stop listening, despite the reminders of your own lacking self-worth.", "inferiority"],
		"res://imgsChoices/busker.png"
	],
	["The aroma of coffee alerts you. Tempted by its scent, you end up approaching a nearby coffee stand and ordering something. However, when you receive your order, you quickly realize that it’s incorrect. You stare at the much-darker-than-expected hue within the plastic cup and deliberate.\n\nWhat do you do?",
		["Storm up to the worker and demand a fresh cup. How dare they mess up your order? Can’t they do one thing correctly?", "superiority"],
		["Take the cup without complaint. They must be busy. You’re not important enough for a fresh remake, although you still can’t help but feel a little spiteful.", "inferiority"],
		["Reluctantly ask for a remake. Then feel bad that you asked. They must be busy, and you must have done nothing but add more to their plate.", "guilt"],
		"res://imgsChoices/coffee.png"
	],
	["You pass by a large crowd. Intrigue piqued, you push your way through to the front. It seems some audience-interactive event is taking place– some kind of impromptu magic show. Suddenly, the host asks for a volunteer. They point to you. However, you frankly don’t care much for what’s happening, let alone for participating in it.\n\nWhat do you do?",
		["Force enthusiasm and participate with your all nonetheless. The crowd will be disappointed if you decline. Put on a good show, and people will like you.", "martyr"],
		["Participate with some hesitance. You’ll feel bad for declining. It won’t leave your mind.", "guilt"],
		["Quickly reject the invitation and move away. No way you’re going up there. You’ll embarrass yourself, and everyone will ridicule you. That’s why they’re setting this situation up.", "persecution"],
		"res://imgsChoices/magician.png"
	],
		["While waiting for the subway, you hear what sounds like a heated altercation. Curiously, you glance in the direction of the angry voices. Two men are shoving each other, each becoming increasingly forceful. It’s the unmistakable beginnings of a fight. The subway will be pending for at least a few minutes more.\n\nWhat do you do?",
		["Create distance. They look dangerous. What if they come for you next? You couldn’t possibly hold your own in a fight.", "persecution"],
		["Try to step in. It’s up to you to bravely rescue this situation– nobody else will do it! Perhaps the others around you will notice if you do?", "martyr"],
		["Watch, unmoving. Wonder what it would be like to be good enough to win a fight. You almost wish you could get into one, too, if you could prove yourself.", "inferiority"],
		"res://imgsChoices/outside_subway.png"
	],
	["You get on the subway and take a seat. The subway shoots off in its typical fashion. Your eyes wander, and you find someone staring in your general direction. You’re not sure if they’re staring at you or somewhere else.\n\nWhat do you do?", 
		["Move away. They’re definitely looking at you. Judging you. Hating you.", "persecution"],
		["Do nothing. They’re not looking at you– why would they want to? Strangely, you almost wish they were. In a way, it would prove your likeability.", "inferiority"],
		["Frantically check yourself. If they’re staring at you, you must have done something wrong, right?", "guilt"],
		"res://imgsChoices/man_sub.png"
	]
]

var max = 9

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#_situation()
	choice.visible = false
	
@onready var choice = get_node("/root/Node2D/uis/choice")
@onready var situationTxt = get_node('/root/Node2D/uis/choice/decisionText')
@onready var choice1 = get_node("/root/Node2D/uis/choice/button1")
@onready var choice2 = get_node("/root/Node2D/uis/choice/button2")
@onready var choice3 = get_node("/root/Node2D/uis/choice/button3")
@onready var img = get_node("/root/Node2D/uis/choice/TextureRect")
@onready var trigger = get_node("/root/Node2D/RigidBody2D/CollisionShape2D")
@onready var player: CharacterBody2D = $player
@onready var rigid_body_2d: RigidBody2D = $RigidBody2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _situation():
	var index = randi_range(0, max)

	situationTxt.text = array[index][0]
	img.texture = load(array[index][4])
	choice1.text = array[index][1][0]
	choice1.complex = array[index][1][1]
	choice2.text = array[index][2][0]
	choice2.complex = array[index][2][1]
	choice3.text = array[index][3][0]
	choice3.complex =  array[index][3][1]
