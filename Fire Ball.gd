extends KinematicBody2D

export var STEP = 200
var motion = Vector2()

func _physics_process(delta):
	motion.x = -STEP
	move_and_slide(motion)
