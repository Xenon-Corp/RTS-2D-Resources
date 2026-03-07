extends Camera2D

var cam_move_right = false
var cam_move_left = false
var cam_move_up = false
var cam_move_down = false



func _process(delta: float) -> void:
	var mouse_pos = get_local_mouse_position()

	# Horizontal movement
	if mouse_pos.x > 540:
		cam_move_right = true
		cam_move_left = false
	elif mouse_pos.x < -540:
		cam_move_right = false
		cam_move_left = true
	else:
		cam_move_right = false
		cam_move_left = false

	# Vertical movement
	if mouse_pos.y > 280:
		cam_move_down = true
		cam_move_up = false
	elif mouse_pos.y < -280:
		cam_move_down = false
		cam_move_up = true
	else:
		cam_move_down = false
		cam_move_up = false

	# Apply movement with boundaries
	if cam_move_right and position.x < 2080:
		position += Vector2(6, 0)
		$"../UI/MINIMAP/SCREEN".position += Vector2(0.2, 0)
	elif cam_move_left and position.x > -870:
		position += Vector2(-6, 0)
		$"../UI/MINIMAP/SCREEN".position += Vector2(-0.2, 0)

	if cam_move_down and position.y < 1700:
		position += Vector2(0, 6)
		$"../UI/MINIMAP/SCREEN".position += Vector2(0, 0.2)
	elif cam_move_up and position.y > -1060:
		position += Vector2(0, -6)
		$"../UI/MINIMAP/SCREEN".position += Vector2(0, -0.2)
