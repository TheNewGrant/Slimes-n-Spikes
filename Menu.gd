extends Node2D

signal start
signal setup

func _ready():
	#$Margin/VBox/HBox/Play.disabled = false
	#$Margin/VBox/HBox/Settings.disabled = false
	pass


func _on_Play_pressed():
	#$Margin/VBox/HBox/Play.disabled = true
	#$Margin/VBox/HBox/Settings.disabled = true
	emit_signal("start")
	self.hide()


func _on_Settings_pressed():
	$Margin.hide()
	$TileMap.hide()


func _on_Settings_back():
	$Margin.show()
	$TileMap.show()


func _on_Credits_end():
	emit_signal("setup")
	self.show()


func _on_Ending_end():
	emit_signal("setup")
	self.show()


#func _on_Dungeon_good():
#	emit_signal("setup")
#	self.show()


#func _on_Dungeon_secret():
#	emit_signal("setup")
#	self.show()
