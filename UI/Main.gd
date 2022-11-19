extends Control



func _ready():
	$Label.text = "Welcome to the Maze!!!!"
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_Quit_pressed():
	get_tree().quit()


func _on_Play_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Multiplayer_pressed():
	get_tree().change_scene("res://Multiplayer.tscn")
