extends Node

var frontEndScene = load("SceneManagement/SubScenes/front_end.tscn")
var level1Scene = load("SceneManagement/SubScenes/level_1.tscn")

func _ready():
	pass # Replace with function body.

func _on_Front_End_Button_button_down():
	print("Front End")


func _on_Level_1_Button_button_down():
	print("Level 1")


func _on_Level_2_Button_button_down():
	print("Level 2")


func _on_Level_3_Button_button_down():
	print("Level 3")


func _on_Pause_button_down():
	print("Pause")
