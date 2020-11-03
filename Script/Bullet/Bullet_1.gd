extends KinematicBody2D

onready var world = get_node("/root/World_Info")
export var speed = 10

func _physics_process(delta):
	position.y -= speed * world.world_speed

func _on_Dissapear_timeout():
	queue_free()
