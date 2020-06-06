extends KinematicBody2D

var can_move = false
var movement = Vector2()
var speed = -200

var can_timer = true

signal end

# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if can_move == false:
		pass
	else:
		if can_timer == true:
			$Timer.start()
		else:
			pass
		movement.y = speed
		#self.show()
	
	movement = move_and_slide(movement)


func _on_Timer_timeout():
	self.position = Vector2(0, 0)
	can_move = false
	self.hide()
	emit_signal("end")


func _on_Narrator_bad_credits():
	self.show()
	self.position = Vector2(1056, 2496)
	can_move = true


func _on_Narrator_good_credits():
	self.show()
	self.position = Vector2(1056, -2496)
	can_move = true


func _on_Narrator_secret_credits():
	self.show()
	self.position = Vector2(4224, 1248)
	can_move = true
