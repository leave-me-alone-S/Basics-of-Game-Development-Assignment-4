extends StaticBody2D

@onready var color_rect: ColorRect = $ColorRect
@onready var ball: Node2D = $"../Ball"

var win_height : float
var p_height : float

func _ready():
	win_height = get_viewport_rect().size.y
	p_height = color_rect.size.y
	
func _process(delta: float):
	var dist: float = ball.global_position.y - global_position.y
	var max_step: float = float(get_parent().PADDLE_SPEED) * delta
	var step: float = min(abs(dist), max_step)
	global_position.y += step * sign(dist)
	global_position.y = clamp(global_position.y, p_height / 2.0, win_height - p_height / 2.0)

	
