extends Node

var frontEndScene = load("SceneManagement/SubScenes/front_end.tscn")
var level1Scene = load("SceneManagement/SubScenes/level_1.tscn")
var level2Scene = load("SceneManagement/SubScenes/level_2.tscn")
var level3Scene = load("SceneManagement/SubScenes/level_3.tscn")
var pauseScene = load("SceneManagement/SubScenes/pause.tscn")
var levelIsLoaded = false

func _ready():
	pass # Replace with function body.

func _on_Front_End_Button_button_down():
	print("Front End")

func _on_Level_1_Button_button_down():
	var n = get_tree().get_root().find_node("Level1Root", true, false)
	if n == null:
		if levelIsLoaded == false:
			get_tree().get_root().add_child(level1Scene.instance())
			levelIsLoaded = true
	else:
		n.queue_free()
		levelIsLoaded = false

func _on_Level_2_Button_button_down():
	var n = get_tree().get_root().find_node("Level2Root", true, false)
	if n == null:
		if levelIsLoaded == false:
			get_tree().get_root().add_child(level2Scene.instance())
			levelIsLoaded = true
	else:
		n.queue_free()
		levelIsLoaded = false


func _on_Level_3_Button_button_down():
	var n = get_tree().get_root().find_node("Level3Root", true, false)
	if n == null:
		if levelIsLoaded == false:
			get_tree().get_root().add_child(level3Scene.instance())
			levelIsLoaded = true
	else:
		n.queue_free()
		levelIsLoaded = false

func _on_Pause_button_down():
	var n = get_tree().get_root().find_node("PauseRoot", true, false)
	if n == null:
		get_tree().get_root().add_child(pauseScene.instance())
	else:
		n.queue_free()
	
	
