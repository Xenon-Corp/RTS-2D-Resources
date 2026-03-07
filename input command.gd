extends Node2D


func _ready() -> void:
	Console.add_command("hi", hello)
	$UI.visible = true
	
	
	
func hello():
	Console.print_line("hello Michael What do you want to day?")
