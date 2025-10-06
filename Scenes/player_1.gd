extends StaticBody2D
@onready var color_rect: ColorRect = $ColorRect

#Define 2 heights to be the type int
var win_height : int
var p_height : int

#Get the height of the playing area and the player
func _ready():
	win_height = get_viewport_rect().size.y
	p_height = $ColorRect.get_size().y

# delta is the time the player hold the button.	
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		position.y -= get_parent().PADDLE_SPEED * delta
	elif Input.is_action_pressed("ui_down"):
		position.y += get_parent().PADDLE_SPEED * delta
	# Constrain	the movement of the paddle in the window.	
	position.y = clamp(position.y, p_height / 2, win_height - p_height / 2)
