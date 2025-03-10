extends CharacterBody2D

@export var walk_speed = 300.0
@export var run_speed = 9000.0
@export_range(0, 1) var acceleration = 0.1
@export_range(0, 1) var deceleration = 0.1
var is_on_ground = false

@export var jump_force = -400.0
@export_range(0, 1) var decelerate_on_jump_release = 0.5
#@onready var player = $AnimatedSprite2D
@onready var animation = $AnimatedSprite2D
var was_on_floor = false
var can_jump_anyway = false

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
		
	if not is_on_floor():
		velocity.y += gravity * delta
	if was_on_floor == true and is_on_floor() == false:
		$CoyoteTimer.start(0.1)
		can_jump_anyway = true
	# Handle jump.
	if Input.is_action_just_pressed("jump") and (is_on_floor() or can_jump_anyway):
		velocity.y = jump_force
		was_on_floor = false
	else:
		was_on_floor = is_on_floor()
		
		
	var speed
	if Input.is_action_pressed("run") and is_on_floor():
		speed = run_speed
	else:
		speed = walk_speed

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = move_toward(velocity.x, direction * speed, speed * acceleration)
		if is_on_floor():
			animation.play("move")
		else:
			animation.play("idle")
	else:
		velocity.x = move_toward(velocity.x, 0, walk_speed * deceleration)
		animation.play("idle")
		
	if Input.is_action_pressed("left"):
		animation.flip_h = true
		
	if Input.is_action_pressed("right"):
		animation.flip_h = false

	move_and_slide()


func _on_coyote_timer_timeout() -> void:
	can_jump_anyway = false
