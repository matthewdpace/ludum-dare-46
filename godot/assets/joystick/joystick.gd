extends Control

var bg 
var half
export var stickname = "virtual"
export var listenerNodePath = ""
var status = {}

func _ready():
	set_process_input(true)
	bg = get_node("bg")
	half = bg.texture.get_size()/2
	status['startPos'] = Vector2(0.0, 0.0)	
	status['eventIDX'] = -1
	

func _input(event):
	if event is InputEventScreenTouch:
		status['eventIDX'] = -1
