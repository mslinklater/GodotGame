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
#	for i in range(numCubes):
#		var instance: Spatial = cubeScene.instance()
#		instance.transform.origin.x = 0
#		instance.transform.origin.y = i * 5
#		instance.transform.origin.z = 0
#		add_child(instance)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	currentTime += _delta
	if(currentTime > nextSpawn):
		var instance: Spatial = cubeScene.instance()
		instance.transform.origin.x = 0
		instance.transform.origin.y = 25
		instance.transform.origin.z = 0
		add_child(instance)
		nextSpawn += 1.0 / spawnRate

func _enter_tree():
	print("_enter_tree()")
	pass
	
