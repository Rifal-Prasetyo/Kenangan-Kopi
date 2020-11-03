extends KinematicBody2D

export var speed = 200
export var friction = 0.05
export var acceleration = 0.1
var velocity = Vector2.ZERO
onready var world = get_node("/root/World_Info")

func _physics_process(delta):
	if OS.get_name() == "Android":
		position = get_global_mouse_position()
	else:
		var input_velocity = Vector2.ZERO
		
		if Input.is_action_pressed("ui_right"):
			input_velocity.x += 1
		if Input.is_action_pressed("ui_left"):
			input_velocity.x -= 1
		if Input.is_action_pressed("ui_down"):
			input_velocity.y += 1
		if Input.is_action_pressed("ui_up"):
			input_velocity.y -= 1
		world.player_position = position
		input_velocity = input_velocity.normalized() * speed

		if input_velocity.length() > 0:
			velocity = velocity.linear_interpolate(input_velocity, acceleration ) * world.world_speed
		else:
			velocity = velocity.linear_interpolate(Vector2.ZERO, friction) * world.world_speed
		velocity = move_and_slide(velocity)
