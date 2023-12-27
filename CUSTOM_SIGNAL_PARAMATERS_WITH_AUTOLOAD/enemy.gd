class_name ENEMY_CUSTOM_PARA
extends CharacterBody2D

func _ready():
	EventBus.aggro.connect(change_color)

func change_color(aggro_level: int):
	if aggro_level == 1:
		self.modulate = Color.RED
	elif aggro_level == 2:
		self.modulate = Color.YELLOW
