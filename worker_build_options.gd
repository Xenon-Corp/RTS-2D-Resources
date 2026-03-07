extends Node2D

@export var new_farm: PackedScene
@export var new_barracks: PackedScene









func _on_barracksbuild_pressed() -> void:
	if Global.cash >= 300:
		var new_building = new_barracks.instantiate()
		$"../../../GAME OBJECTS".add_child(new_building)
		Global.cash -= 300


func _on_farmbuild_pressed() -> void:

	if Global.cash >= 150:
		var new_building = new_farm.instantiate()
		$"../../../GAME OBJECTS".add_child(new_building)
		Global.cash -= 150
	
