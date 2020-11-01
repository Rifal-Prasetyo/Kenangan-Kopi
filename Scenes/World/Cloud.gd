extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var Speed = 0
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	region_rect.position.y -= Speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
