extends Camera

var flyCam: bool = false
var forwardSpeed: float = 0.0
var sideSpeed: float = 0.0
var verticalSpeed: float = 0.0

func _process(delta):
	if Input.is_action_pressed("fly_cam"):
		if Input.is_action_pressed("move_forward"):
			forwardSpeed += 1.0 * delta
		if Input.is_action_pressed("move_backward"):
			forwardSpeed -= 1.0 * delta

		translation += transform[2] * -forwardSpeed
	forwardSpeed -= forwardSpeed * 0.5
