extends Node

const CANT_NIVELES = 6

var estacion: int = 0
var nivel: int = 1


func next_level():
	nivel += 1
	
	if nivel > CANT_NIVELES:
		get_tree().change_scene("res://escenas/Menu.gd")
	
	get_tree().change_scene("res://escenas/Juego.tscn")
