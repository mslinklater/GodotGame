extends Label

export var number = 5

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var count = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	text = "plappy plap"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	count = count + 1
	text = "plappy plap " + str(count)
	rect_rotation = count
