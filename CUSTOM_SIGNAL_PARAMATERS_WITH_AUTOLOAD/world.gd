extends Node2D

const EnemySpawner = preload("res://CUSTOM_SIGNAL_PARAMATERS_WITH_AUTOLOAD/enemy.tscn")

func _ready():
	var enemy3 = EnemySpawner.instantiate()
	enemy3.position = Vector2(1033,480)
	add_child(enemy3)
