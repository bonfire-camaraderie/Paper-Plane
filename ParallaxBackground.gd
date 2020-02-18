extends ParallaxBackground
var image = preload("res://Sky Background 2.png")
var time_start = OS.get_unix_time()

export var backgroundSpeed = 3
onready var backgroundSprite = get_node("ParallaxLayer/Background_Skin")

func _process(delta):
	$ParallaxLayer.motion_offset.x -= backgroundSpeed
	var time_now = OS.get_unix_time()
	var elapsed = time_now - time_start
	var minutes = elapsed % 60
	if minutes == 30:
		backgroundSprite.set_texture(image)
