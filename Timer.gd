extends Timer

const fireBall = preload("res://Fire_Ball.tscn")
onready var timer = get_node()
var objectPosition = Vector2()

func _ready():
	timer.set_wait_time(2)
	timer.start()
	
func TimerTimeOut(): 
	var object = fireBall.instance()
	
	randomize()
	objectPosition.y = rand_range(0, 600)
	objectPosition.x = 1500
	object.set_position(objectPosition)
	get_node("fireBall").add_child(object)
	
