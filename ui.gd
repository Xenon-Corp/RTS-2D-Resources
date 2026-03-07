extends CanvasLayer

func _process(delta: float) -> void:
	$UPPER/CASH.text = "CASH: " + str(Global.cash)
	$UPPER/UNITS.text = "UNITS: " + str(Global.unit_count) + "/" + str(Global.unit_max_count)
	
	
	if Global.worker_selected == true:
		$"Worker build option".visible = true
	if Global.worker_selected == false:
		$"Worker build option".visible = false
