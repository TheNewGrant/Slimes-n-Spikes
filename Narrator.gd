extends Node2D


var first_encounter = """Welcome contestant!  I see that you've trusted me enough to
 start the game!  But now.  I have to ask you, do you really trust me?
  I can really help you manuever through this harsh,
spikey environment but I gotta know that you truly trust me.  So whatta ya say?"""
var into_secret = """Well, Well, Well... lookie what you've found, it seems like a 
secret area.  Good thing you didn't go any other way,  now you can just
head down over to your nice new secret trophy.  So sad I didn't
think of making my own ending a secret."""

var bad_ending = """Many thanks for trusting me and following the path I've carved
out for you.  You've grown in strength and now I can use it myself!  Oh, my.  
This poweris so scrumtious.  Now I can finally escape my prison!  
Thank you contestant.  Thank you."""
var good_ending = """Oh, no!  You disobeyed all my instructions and found the one
place I didn't want you to go.  I am powerless here!  
Wait, no!  Don't leave me here! I will be all alone again. NOOOOOO..."""
var secret_ending = """Congratulations.  You found the secret ending,  I applaud you
for having the nerve to try to go in the direction I didn't want you to go
but that's alright.  You can try again and obey me correctly.  Anyways,
here's your trophy"""

var can_hide = true
var first = false
var second = false
var end_bad = false
var end_good = false
var end_secret = false

signal good_open
signal bad_open

signal good_secret
signal bad_secret

signal bad_ends
signal good_ends
signal secret_ends

signal good_credits
signal bad_credits
signal secret_credits

func _ready():
	$Margin/VBox/Explanation.text = first_encounter
	self.position = Vector2(0, 0)
	self.hide()


func _physics_process(delta):
	if can_hide == true:
		self.hide()
		can_hide = false
	else:
		pass
	


func _on_Dungeon_narratorstart():
	self.show()
	self.position = Vector2(0, 0)
	$Margin/VBox/Explanation.text = first_encounter
	first = true


func _on_Trust_pressed():
	if first:
		emit_signal("bad_open")
		can_hide = true
		first = false
	elif second:
		emit_signal("good_secret")
		can_hide = true
		second = false
	elif end_bad:
		emit_signal("bad_ends")
		can_hide = true
		end_bad = false
	elif end_good:
		emit_signal("good_ends")
		can_hide = true
		end_good = false
	elif end_secret:
		emit_signal("secret_ends")
		can_hide = true
		end_good = false


func _on_Dont_Trust_pressed():
	if first:
		emit_signal("good_open")
		can_hide = true
		first = false
	elif second:
		emit_signal("bad_secret")
		can_hide = true
		second = false
	elif end_bad:
		emit_signal("bad_credits")
		emit_signal("bad_ends")
		can_hide = true
		end_bad = false
	elif end_good:
		emit_signal("good_credits")
		emit_signal("good_ends")
		can_hide = true
		end_good = false
	elif end_secret:
		emit_signal("secret_credits")
		emit_signal("secret_ends")
		can_hide = true
		end_secret = false
		


func _on_Dungeon_narratorsecond():
	self.show()
	self.position = Vector2(2112, 624)
	$Margin/VBox/Explanation.text = into_secret
	second = true


func _on_Dungeon_bad():
	print("Choose?")
	self.show()
	self.position = Vector2(1056, 2496)
	$Margin/VBox/Explanation.text = bad_ending
	end_bad = true


func _on_Dungeon_good():
	print("choose?")
	self.show()
	self.position = Vector2(1056, -2496)
	$Margin/VBox/Explanation.text = good_ending
	end_good = true


func _on_Dungeon_secret():
	self.show()
	self.position = Vector2(4224, 1248)
	$Margin/VBox/Explanation.text = secret_ending
	end_secret = true
