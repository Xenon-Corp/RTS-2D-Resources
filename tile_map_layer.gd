extends TileMapLayer



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.add_nav_spot != null:
		for spots in Global.add_nav_spot:
			erase_cell(Vector2(spots.x, spots.y))
			erase_cell(Vector2(spots.x + 1, spots.y))
			erase_cell(Vector2(spots.x, spots.y + 1))
			erase_cell(Vector2(spots.x + 1, spots.y + 1))
			
			set_cell(Vector2(spots.x, spots.y), 0, Vector2i(0,0))
			set_cell(Vector2(spots.x + 1, spots.y), 0, Vector2i(0,0))
			set_cell(Vector2(spots.x, spots.y + 1), 0, Vector2i(0,0))
			set_cell(Vector2(spots.x + 1, spots.y + 1), 0, Vector2i(0,0))
		Global.add_nav_spot.clear()
		
	if Global.add_to_no_nav_spot != null:
		for spots in Global.add_to_no_nav_spot:
			erase_cell(Vector2(spots.x, spots.y))
			erase_cell(Vector2(spots.x + 1, spots.y))
			erase_cell(Vector2(spots.x, spots.y + 1))
			erase_cell(Vector2(spots.x + 1, spots.y + 1))
			
			set_cell(Vector2(spots.x, spots.y), 1, Vector2i(0,0))
			set_cell(Vector2(spots.x + 1, spots.y), 1, Vector2i(0,0))
			set_cell(Vector2(spots.x, spots.y + 1), 1, Vector2i(0,0))
			set_cell(Vector2(spots.x + 1, spots.y + 1), 1, Vector2i(0,0))
		Global.add_to_no_nav_spot.clear()
