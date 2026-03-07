extends Node

var add_nav_spot = PackedVector2Array()
var add_to_no_nav_spot = PackedVector2Array()
var worker_selected = false
var building_selected = false

var unit_max_count = 0
var unit_count = 0
var cash = 10000000

var new_worker_target = null
var new_worker_target_type = null
var new_worker_target_job = null
var new_worker_target_id = null

var enemy_units = 0
var good_units = 0


func reset_all_var():
	add_nav_spot = PackedVector2Array()
	add_to_no_nav_spot = PackedVector2Array()
	worker_selected = false
	building_selected = false

	unit_max_count = 0
	unit_count = 0
	cash = 10000000

	new_worker_target = null
	new_worker_target_type = null
	new_worker_target_job = null
	new_worker_target_id = null

	enemy_units = 0
	good_units = 0
	
func _ready() -> void:
	pass
