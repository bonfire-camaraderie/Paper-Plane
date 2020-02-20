extends KinematicBody2D

export var STEP = 200
var motion = Vector2()

func _physics_process(delta):
	var up = Input.is_action_pressed("ui_up")
	var down = Input.is_action_pressed("ui_down")
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	
	match true:
		up :
			motion.y = -STEP
			continue
		down :
			motion.y = STEP
			continue
		left :
			motion.x = -STEP
			continue
		right :
			motion.x = STEP
			continue
			
	if up == false and down == false :
		motion.y = 0
		
	if left == false and right == false :
		motion.x = 0
	
	move_and_slide(motion)
