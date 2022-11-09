extends KinematicBody
const speed = 9
var velocity = Vector3(0,0,0)
const rotationspeed = 9

func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		velocity.x = 0
	
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
		$MeshInstance.rotate_z(deg2rad(-rotationspeed))
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		$MeshInstance.rotate_z(deg2rad(rotationspeed))
	else:
		velocity.x = lerp(velocity.x,0,0.2)
	
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		velocity.z = 0
	
	elif Input.is_action_pressed("ui_up"):
		velocity.z = -speed
		$MeshInstance.rotate_x(deg2rad(-rotationspeed))
	elif Input.is_action_pressed("ui_down"):
		velocity.z = speed
		$MeshInstance.rotate_x(deg2rad(rotationspeed))
	else:
		velocity.z = lerp(velocity.z,0,0.2)
	move_and_slide(velocity)
func _on_enemy_body_entered(body):
	if body.name == "Steve":
		get_tree().change_scene("res://GameOver.tscn")
		
		
		
