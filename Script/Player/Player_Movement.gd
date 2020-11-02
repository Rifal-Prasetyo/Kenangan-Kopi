extends KinematicBody2D

var speed = 200
var friction = 0.05
var acceleration = 0.1
var velocity = Vector2.ZERO
onready var world = get_node("/root/World_Info")

func _physics_process(delta):
	var input_velocity = Vector2.ZERO
	# Check input for "desired" velocity
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

	# If there's input, accelerate to the input velocity
	if input_velocity.length() > 0:
		velocity = velocity.linear_interpolate(input_velocity, acceleration ) * world.world_speed
	else:
		# If there's no input, slow down to (0, 0)
		velocity = velocity.linear_interpolate(Vector2.ZERO, friction) * world.world_speed
	velocity = move_and_slide(velocity)
