extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var numCubes = 5
var cubeScene = load("GameObjects/RigidBodyCube.tscn")
var nextSpawn = 0
var currentTime = 0
export var spawnRate: float = 1.0

# Called when the node enters the scene tree for the first time.
func _ready():
	print("_ready()")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	currentTime += _delta
	if(currentTime > nextSpawn):
		var instance: Spatial = cubeScene.instance()
		instance.transform.origin.x = (randf() * 2.0) - 1.0
		instance.transform.origin.y = 25
		instance.transform.origin.z = (randf() * 2.0) - 1.0
		add_child(instance)
		nextSpawn += 1.0 / spawnRate

func _enter_tree():
	print("_enter_tree()")

func _exit_tree():
	print("_exit_tree()")

func _input(event):
	var mouse_button_event = event as InputEventMouseButton
	if mouse_button_event:
		print("mouse_button_event")

	var input_event_action = event as InputEventAction
	if input_event_action:
		print("input_event_action")
	
	var input_event_joypad_button = event as InputEventJoypadButton
	if input_event_joypad_button:
		print("input_event_joypad_button")
		
	var input_event_joypad_motion = event as InputEventJoypadMotion
	if input_event_joypad_motion:
		print("input_event_joypad_motion")
	
	var input_event_midi = event as InputEventMIDI
	if input_event_midi:
		print("input_event_midi")
