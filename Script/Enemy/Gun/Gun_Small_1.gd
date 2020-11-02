extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var world = $"/root/World_Info"

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	look_at(world.player_position)
	rotation_degrees += 90
	$"../Sprite".speed_scale = 5 * world.world_speed
	$"..".gravity_scale = 0.5 * world.world_speed
