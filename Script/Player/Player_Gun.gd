extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var BULLET = preload("res://Objects/Bullet/Bullet_1.tscn")
onready var world = $"/root/World_Info"

func _process(delta):
	if world.world_speed != 1:
		$Cooldown.wait_time = 2
	else:
		$Cooldown.wait_time = 0.25
		

func _on_Cooldown_timeout():
	var bullet =  BULLET.instance()
	get_node("/root").add_child(bullet)
	bullet.global_position = global_position

	$Cooldown.start()
	$Shoot.play()
	
