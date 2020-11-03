extends Sprite

onready var world = get_node("/root/World_Info")

export var Speed = 0.0

func _physics_process(delta):
	region_rect.position.y -= Speed * world.world_speed
