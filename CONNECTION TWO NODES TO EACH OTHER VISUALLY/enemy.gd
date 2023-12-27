class_name Enemy_VISUALLY
extends CharacterBody2D


func _physics_process(delta):
	pass


func _on_button_pressed():
	self.modulate = Color.RED
