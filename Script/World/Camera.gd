extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var world = get_node("/root/World_Info")

# Called when the node enters the scene tree for the first time.
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		position = $"../Player".position
	if Input.is_action_just_pressed("ui_accept"):
		world.world_speed = 0.1
		$Zoom.play("Zoom_In")
		
	elif Input.is_action_just_released("ui_accept"):
		position = Vector2(0, 0)
		world.world_speed = 1.0
		$Zoom.play("Zoom_Out")



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
