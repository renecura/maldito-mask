extends Node

func _ready() -> void:
	randomize()

func play(sfx = null) -> void:
	if sfx:
		get_node(sfx).play()
		return
	
	get_child(randi() % get_child_count()).play()


func stop(sfx = null) -> void:
	get_node(sfx).stop()
	
