extends KinematicBody2D

const STEP = 200
var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		motion.y = -STEP
	elif Input.is_action_pressed("ui_down"):
		motion.y = STEP
	else:
		motion.y = 0
	
	move_and_slide(motion)
