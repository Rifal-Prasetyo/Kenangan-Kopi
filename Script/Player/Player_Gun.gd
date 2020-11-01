extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var BULLET = preload("res://Objects/Bullet/Bullet_1.tscn")

func _on_Cooldown_timeout():
	var bullet =  BULLET.instance()
	get_node("/root").add_child(bullet)
	bullet.global_position = global_position
	$Shoot.play()
	$Cooldown.start()
