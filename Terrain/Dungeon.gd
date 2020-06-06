extends Node2D

var camera = preload("res://Camera.gd").new()

signal narratorstart
signal narratorsecond

signal bad
signal good
signal secret


func _ready():
	$Respawn_Spots/Bad1Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Bad2Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Bad3Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Bad4Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Bad5Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Bad6Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Good1Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Good2Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Good3Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Good4Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Good5Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Good6Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Secret1Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Secret2Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Secret3Spawn/CollisionPolygon2D.disabled = false
	$Respawn_Spots/Secret4Spawn/CollisionShape2D.disabled = false
	$Respawn_Spots/Secret5Spawn/CollisionShape2D.disabled = false
	$Narrator_Spots/Spot1/CollisionPolygon2D.disabled = true
	





func _on_Bad1Spawn_body_entered(_body):
	$Respawn_Spots/Bad1Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(10, 13, 0)
	$Wall.set_cell(11, 13, 0)
	$Wall.set_cell(12, 13, 0)


func _on_Bad2Spawn_body_entered(_body):
	$Respawn_Spots/Bad2Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(22, 22, 0)
	$Wall.set_cell(22, 23, 0)


func _on_Bad3Spawn_body_entered(_body):
	$Respawn_Spots/Bad3Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(31, 26, 0)
	$Wall.set_cell(32, 26, 0)
	$Wall.set_cell(33, 26, 0)


func _on_Bad4Spawn_body_entered(_body):
	$Respawn_Spots/Bad4Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(21, 32, 0)
	$Wall.set_cell(21, 33, 0)


func _on_Bad5Spawn_body_entered(_body):
	$Respawn_Spots/Bad5Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(4, 39, 0)
	$Wall.set_cell(5, 39, 0)
	$Wall.set_cell(6, 39, 0)


func _on_Bad6Spawn_body_entered(_body):
	$Respawn_Spots/Bad6Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(18, 52, 0)
	$Wall.set_cell(19, 52, 0)
	$Wall.set_cell(20, 52, 0)


func _on_Good1Spawn_body_entered(_body):
	$Respawn_Spots/Good1Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(12, 0, 0)
	$Wall.set_cell(13, 0, 0)
	$Wall.set_cell(14, 0, 0)


func _on_Good2Spawn_body_entered(_body):
	$Respawn_Spots/Good2Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(22, -8, 0)
	$Wall.set_cell(22, -9, 0)

func _on_Good3Spawn_body_entered(_body):
	$Respawn_Spots/Good3Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(26, -13, 0)
	$Wall.set_cell(27, -13, 0)
	$Wall.set_cell(28, -13, 0)


func _on_Good4Spawn_body_entered(_body):
	$Respawn_Spots/Good4Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(21, -21, 0)
	$Wall.set_cell(21, -22, 0)


func _on_Good5Spawn_body_entered(_body):
	$Respawn_Spots/Good5Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(5, -26, 0)
	$Wall.set_cell(6, -26, 0)
	$Wall.set_cell(7, -26, 0)


func _on_Good6Spawn_body_entered(_body):
	$Respawn_Spots/Good6Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(5, -39, 0)
	$Wall.set_cell(6, -39, 0)
	$Wall.set_cell(7, -39, 0)
	$Wall.set_cell(15, -39, 0)
	$Wall.set_cell(16, -39, 0)
	$Wall.set_cell(17, -39, 0)


func _on_Secret1Spawn_body_entered(_body):
	$Respawn_Spots/Secret1Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(32, 0, 0)
	$Wall.set_cell(33, 0, 0)
	$Wall.set_cell(34, 0, 0)


func _on_Secret2Spawn_body_entered(_body):
	$Respawn_Spots/Secret2Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(44, 8, 0)
	$Wall.set_cell(44, 9, 0)


func _on_Secret3Spawn_body_entered(_body):
	$Respawn_Spots/Secret3Spawn/CollisionPolygon2D.disabled = true
	$Wall.set_cell(44, 17, 0)
	$Wall.set_cell(44, 18, 0)
	$Wall.set_cell(54, 13, 0)
	$Wall.set_cell(55, 13, 0)
	$Wall.set_cell(56, 13, 0)


func _on_Secret4Spawn_body_entered(_body):
	$Respawn_Spots/Secret4Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(54, 26, 0)
	$Wall.set_cell(55, 26, 0)
	$Wall.set_cell(56, 26, 0)


func _on_Secret5Spawn_body_entered(_body):
	$Respawn_Spots/Secret5Spawn/CollisionShape2D.disabled = true
	$Wall.set_cell(66, 30, 0)
	$Wall.set_cell(66, 31, 0)


func _on_Spot1_body_entered(body):
	$Wall.set_cell(12, 0, 0)
	$Wall.set_cell(13, 0, 0)
	$Wall.set_cell(14, 0, 0)
	$Wall.set_cell(10, 12, 0)
	$Wall.set_cell(11, 12, 0)
	$Wall.set_cell(12, 12, 0)
	$Narrator_Spots/Spot1/CollisionPolygon2D.disabled = true
	emit_signal("narratorstart")


func _on_Menu_start():
	$Wall.set_cell(12, 0, 0)
	$Wall.set_cell(13, 0, 0)
	$Wall.set_cell(14, 0, 0)
	$Wall.set_cell(10, 12, 0)
	$Wall.set_cell(11, 12, 0)
	$Wall.set_cell(12, 12, 0)
	$Narrator_Spots/Spot1/CollisionPolygon2D.disabled = false


func _on_Narrator_good_open():
	$Wall.set_cell(12, 0, -1)
	$Wall.set_cell(13, 0, -1)
	$Wall.set_cell(14, 0, -1)


func _on_Narrator_bad_open():
	$Wall.set_cell(10, 12, -1)
	$Wall.set_cell(11, 12, -1)
	$Wall.set_cell(12, 12, -1)


func _on_Spot2_body_entered(body):
	$Narrator_Spots/Spot2/CollisionPolygon2D.disabled = true
	$Wall.set_cell(54, 25, 0)
	$Wall.set_cell(55, 25, 0)
	$Wall.set_cell(56, 25, 0)
	emit_signal("narratorsecond")
	$Narrator_Spots/Spot2/CollisionPolygon2D.disabled = true


func _on_Narrator_bad_secret():
	$Wall.set_cell(54, 25, -1)
	$Wall.set_cell(55, 25, -1)
	$Wall.set_cell(56, 25, -1)
	$Spikes.set_cell(56, 16, 0)
	$Spikes.set_cell(54, 20, 0)
	$Spikes.set_cell(56, 22, 0)


func _on_Narrator_good_secret():
	$Wall.set_cell(54, 25, -1)
	$Wall.set_cell(55, 25, -1)
	$Wall.set_cell(56, 25, -1)


func _on_NarratorBad_body_entered(body):
	emit_signal("bad")


func _on_Menu_setup():
	#Bad1
	$Wall.set_cell(10, 13, -1)
	$Wall.set_cell(11, 13, -1)
	$Wall.set_cell(12, 13, -1)
	#Bad2
	$Wall.set_cell(22, 22, -1)
	$Wall.set_cell(22, 23, -1)
	#Bad3
	$Wall.set_cell(31, 26, -1)
	$Wall.set_cell(32, 26, -1)
	$Wall.set_cell(33, 26, -1)
	#Bad4
	$Wall.set_cell(21, 32, -1)
	$Wall.set_cell(21, 33, -1)
	#Bad5
	$Wall.set_cell(4, 39, -1)
	$Wall.set_cell(5, 39, -1)
	$Wall.set_cell(6, 39, -1)
	#Bad6
	$Wall.set_cell(18, 52, -1)
	$Wall.set_cell(19, 52, -1)
	$Wall.set_cell(20, 52, -1)
	#Good1
	$Wall.set_cell(12, 0, -1)
	$Wall.set_cell(13, 0, -1)
	$Wall.set_cell(14, 0, -1)
	#Good2
	$Wall.set_cell(22, -8, -1)
	$Wall.set_cell(22, -9, -1)
	#Good3
	$Wall.set_cell(26, -13, -1)
	$Wall.set_cell(27, -13, -1)
	$Wall.set_cell(28, -13, -1)
	#Good4
	$Wall.set_cell(21, -21, -1)
	$Wall.set_cell(21, -22, -1)
	#Good5
	$Wall.set_cell(5, -26, -1)
	$Wall.set_cell(6, -26, -1)
	$Wall.set_cell(7, -26, -1)
	#Good6
	$Wall.set_cell(5, -39, -1)
	$Wall.set_cell(6, -39, -1)
	$Wall.set_cell(7, -39, -1)
	$Wall.set_cell(15, -39, -1)
	$Wall.set_cell(16, -39, -1)
	$Wall.set_cell(17, -39, -1)
	#Secret1
	$Wall.set_cell(32, 0, -1)
	$Wall.set_cell(33, 0, -1)
	$Wall.set_cell(34, 0, -1)
	#Secret2
	$Wall.set_cell(44, 8, -1)
	$Wall.set_cell(44, 9, -1)
	#Secret3
	$Wall.set_cell(44, 17, -1)
	$Wall.set_cell(44, 18, -1)
	$Wall.set_cell(54, 13, -1)
	$Wall.set_cell(55, 13, -1)
	$Wall.set_cell(56, 13, -1)
	#Secret4
	$Wall.set_cell(54, 26, -1)
	$Wall.set_cell(55, 26, -1)
	$Wall.set_cell(56, 26, -1)
	#Secret5
	$Wall.set_cell(66, 30, -1)
	$Wall.set_cell(66, 31, -1)
	#Place Start Walls
	$Wall.set_cell(12, 0, 0)
	$Wall.set_cell(13, 0, 0)
	$Wall.set_cell(14, 0, 0)
	$Wall.set_cell(10, 12, 0)
	$Wall.set_cell(11, 12, 0)
	$Wall.set_cell(12, 12, 0)
	#Collision
	$Narrator_Spots/Spot1/CollisionPolygon2D.disabled = true
	$Narrator_Spots/Spot2/CollisionPolygon2D.disabled = false


func _on_NarratorSecret_body_entered(body):
	emit_signal("secret")


func _on_NarratorGood_body_entered(body):
	emit_signal("good")
	print("Found")


func _on_Ending_end():
		#Bad1
	$Wall.set_cell(10, 13, -1)
	$Wall.set_cell(11, 13, -1)
	$Wall.set_cell(12, 13, -1)
	#Bad2
	$Wall.set_cell(22, 22, -1)
	$Wall.set_cell(22, 23, -1)
	#Bad3
	$Wall.set_cell(31, 26, -1)
	$Wall.set_cell(32, 26, -1)
	$Wall.set_cell(33, 26, -1)
	#Bad4
	$Wall.set_cell(21, 32, -1)
	$Wall.set_cell(21, 33, -1)
	#Bad5
	$Wall.set_cell(4, 39, -1)
	$Wall.set_cell(5, 39, -1)
	$Wall.set_cell(6, 39, -1)
	#Bad6
	$Wall.set_cell(18, 52, -1)
	$Wall.set_cell(19, 52, -1)
	$Wall.set_cell(20, 52, -1)
	#Good1
	$Wall.set_cell(12, 0, -1)
	$Wall.set_cell(13, 0, -1)
	$Wall.set_cell(14, 0, -1)
	#Good2
	$Wall.set_cell(22, -8, -1)
	$Wall.set_cell(22, -9, -1)
	#Good3
	$Wall.set_cell(26, -13, -1)
	$Wall.set_cell(27, -13, -1)
	$Wall.set_cell(28, -13, -1)
	#Good4
	$Wall.set_cell(21, -21, -1)
	$Wall.set_cell(21, -22, -1)
	#Good5
	$Wall.set_cell(5, -26, -1)
	$Wall.set_cell(6, -26, -1)
	$Wall.set_cell(7, -26, -1)
	#Good6
	$Wall.set_cell(5, -39, -1)
	$Wall.set_cell(6, -39, -1)
	$Wall.set_cell(7, -39, -1)
	$Wall.set_cell(15, -39, -1)
	$Wall.set_cell(16, -39, -1)
	$Wall.set_cell(17, -39, -1)
	#Secret1
	$Wall.set_cell(32, 0, -1)
	$Wall.set_cell(33, 0, -1)
	$Wall.set_cell(34, 0, -1)
	#Secret2
	$Wall.set_cell(44, 8, -1)
	$Wall.set_cell(44, 9, -1)
	#Secret3
	$Wall.set_cell(44, 17, -1)
	$Wall.set_cell(44, 18, -1)
	$Wall.set_cell(54, 13, -1)
	$Wall.set_cell(55, 13, -1)
	$Wall.set_cell(56, 13, -1)
	#Secret4
	$Wall.set_cell(54, 26, -1)
	$Wall.set_cell(55, 26, -1)
	$Wall.set_cell(56, 26, -1)
	#Secret5
	$Wall.set_cell(66, 30, -1)
	$Wall.set_cell(66, 31, -1)
	#Place Start Walls
	$Wall.set_cell(12, 0, 0)
	$Wall.set_cell(13, 0, 0)
	$Wall.set_cell(14, 0, 0)
	$Wall.set_cell(10, 12, 0)
	$Wall.set_cell(11, 12, 0)
	$Wall.set_cell(12, 12, 0)
	#Collision
	$Narrator_Spots/Spot1/CollisionPolygon2D.disabled = false
	$Narrator_Spots/Spot2/CollisionPolygon2D.disabled = false





#func _on_Secret_body_entered(body):
#	print("time")
#	emit_signal("Secret")
