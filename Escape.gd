extends Node2D



func _ready():
	pass 


func _process(delta):
	if Input.is_action_pressed("End"):
		#$Camera2D.current = true
		pass


func _on_Trust_pressed():
	pass # Replace with function body.


func _on_Dont_Trust_pressed():
	$Camera2D.current = false
