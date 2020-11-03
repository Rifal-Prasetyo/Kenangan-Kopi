extends RigidBody2D

onready var world = get_node("/root/World_Info")

func _on_Dissapear_timeout():
	queue_free()


