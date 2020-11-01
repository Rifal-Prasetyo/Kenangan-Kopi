extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var world = get_node("/root/World_Info")
export var speed = 10
# Called when the node enters the scene tree for the first time.
func _process(delta):
	position.y -= speed * world.world_speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Dissapear_timeout():
	queue_free()
