extends Control

var score = 0
onready var timer = get_node("Score_Timer")
onready var scoreLabel = get_node("Score_Label")


func _ready():
	timer.set_wait_time(0.1)
	timer.start()


func _on_Timer_timeout():
	score += 1
	scoreLabel.text = str(score)
