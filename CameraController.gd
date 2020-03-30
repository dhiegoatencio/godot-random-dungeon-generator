extends Camera2D

const moveSpeed = 400

func _process(delta: float) -> void:
	if Input.is_action_pressed('ui_up'):
		position.y -= moveSpeed * delta 
	if Input.is_action_pressed('ui_down'):
		position.y += moveSpeed * delta
	if Input.is_action_pressed('ui_left'):
		position.x -= moveSpeed * delta
	if Input.is_action_pressed('ui_right'):
		position.x += moveSpeed * delta
