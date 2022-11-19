extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_key_body_entered(body):
	if body.name == "Player":
		Global.update_score(100)
		var exit = get_node_or_null("/root/Level1/Maze/Exit")
		if exit != null:
			var sound = get_node_or_null("/root/Level1/Key")
			if sound != null:
				sound.playing = true
			exit.unlock()
			queue_free()
