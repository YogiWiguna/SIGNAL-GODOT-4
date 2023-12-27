extends Node2D

@onready var enemy = $Enemy as Enemy_CODES
@onready var enemy_2 = $Enemy2 as Enemy_CODES
@onready var button = $Button 

const EnemySpawner = preload("res://CONNECTING_NODES_WITH_CODES/enemy.tscn")

func _ready():
	button.pressed.connect(enemy._on_button_pressed)
	button.pressed.connect(enemy_2._on_button_pressed)
	var enemy3 = EnemySpawner.instantiate()
	enemy3.position = Vector2(450,480)
	add_child(enemy3)
	button.pressed.connect(enemy3._on_button_pressed)
