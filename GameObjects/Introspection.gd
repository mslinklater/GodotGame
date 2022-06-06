extends Node

var chassis: MeshInstance
var turret: MeshInstance

# Called when the node enters the scene tree for the first time.
func _ready():
	chassis = $Chassis
	turret = $Chassis/Turret

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
