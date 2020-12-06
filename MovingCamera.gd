extends Spatial


var velocity = Vector2()
var speed = 2;

func _unhandled_input(event):
	velocity = Vector2.ZERO;
	if Input.is_action_pressed('right'):
		velocity.x += 1
	if Input.is_action_pressed('left'):
		velocity.x -= 1
	if Input.is_action_pressed('down'):
		velocity.y += 1
	if Input.is_action_pressed('up'):
		velocity.y -= 1
	velocity = velocity.normalized() * speed


func _physics_process(delta):
	translate(Vector3(velocity.x, 0, velocity.y) * delta)
