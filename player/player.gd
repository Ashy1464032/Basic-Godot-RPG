extends CharacterBody2D


const speed = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 600


func _process(delta):
	
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_pressed("move_right"):
		position.x += speed * delta
	if Input.is_action_pressed("move_left"):
		position.x -= speed * delta
	if Input.is_action_pressed("move_up"):
		position.y -= speed * delta

	move_and_slide()
