extends Node2D

@onready var enemy = $Enemy as ENEMY_CUSTOM
@onready var enemy_2 = $Enemy2 as ENEMY_CUSTOM
@onready var player = $Player as Player_Custom


const EnemySpawner = preload("res://CUSTOM SIGNAL/enemy_custom.tscn")

func _ready():
	player.aggro.connect(enemy.change_color)
	player.aggro.connect(enemy_2.change_color)
	var enemy3 = EnemySpawner.instantiate()
	enemy3.position = Vector2(1033,480)
	add_child(enemy3)
	player.aggro.connect(enemy3.change_color)
