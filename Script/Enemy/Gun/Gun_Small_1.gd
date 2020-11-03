extends Sprite

onready var world = $"/root/World_Info"

func _physics_process(delta):
	look_at(world.player_position)
	rotation_degrees += 90
	$"../Sprite".speed_scale = 5 * world.world_speed
	$"..".gravity_scale = 0.5 * world.world_speed
