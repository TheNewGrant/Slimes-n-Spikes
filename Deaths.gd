extends Node2D

var deaths = 0
var counter = "Deaths: %d"
var full_counter = counter % deaths

var player = preload("res://Player/Player.gd").new()

func _ready():
	player.connect("hurt", self, "_on_Player_hurt")

func _on_Player_hurt():
	deaths += 1
	print(deaths)
	$Label.text = full_counter
