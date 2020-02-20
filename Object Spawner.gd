extends Node

const fireBall = preload("res://Fire_Ball.tscn")
onready var timer = get_node("Timer")
var objectPosition = Vector2()

func _ready():
	timer.set_wait_time(2)
	timer.start()

func spawnObject(): 
	var object = fireBall.instance()
	
	randomize()
	objectPosition.y = rand_range(0, 500)
	objectPosition.x = 1500
	object.set_position(objectPosition)
	get_node("fireBall").add_child(object)

func _on_Timer_timeout():
	spawnObject()
