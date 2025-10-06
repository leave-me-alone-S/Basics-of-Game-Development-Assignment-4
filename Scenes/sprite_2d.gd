extends Sprite2D

# 0: player, 1: CPU
var score := [0,0] 
# define a constant
const PADDLE_SPEED: int = 500

	


func _on_ball_timer_timeout():
	$Ball.new_ball()
	

	# Replace with function body.


func _on_left_body_entered(body: Node2D):
	score[1] += 1
	$"Hud/CPU score".text = str(score[1]) 
	$BallTimer.start() 

func _on_right_body_entered(body: Node2D):
	score[0] += 1
	$"Hud/Player score".text = str(score[0]) 
	$BallTimer.start() 
