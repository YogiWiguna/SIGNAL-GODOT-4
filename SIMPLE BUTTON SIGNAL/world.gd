extends Node2D

@onready var player = $Player
@onready var enemy = $Enemy



func _on_button_pressed():
	player.modulate = Color.RED
	enemy.rotate(PI/2)
