extends Node2D


var win = "You Won!"
var lose = "You Lost."

var win_data = "You got the Good Ending!"
var lose_data = "You got the Bad Ending."
var secret_data = "You got the Secret Ending!"

signal end


func _ready():
	self.hide()


func _on_Narrator_bad_ends():
	self.show()
	self.position = Vector2(1056, 2496)
	$Margin/VBox/You_Ended.text = lose
	$Margin/VBox/What_you_got.text = lose_data


func _on_Narrator_good_ends():
	self.show()
	self.position = Vector2(1056, -2496)
	$Margin/VBox/You_Ended.text = win
	$Margin/VBox/What_you_got.text = win_data



func _on_Narrator_secret_ends():
	self.show()
	self.position = Vector2(4224, 1248)
	$Margin/VBox/You_Ended.text = win
	$Margin/VBox/What_you_got.text = secret_data



func _on_Trust_pressed():
	self.hide()
	emit_signal("end")


func _on_Dont_Trust_pressed():
	self.hide()
	emit_signal("end")
