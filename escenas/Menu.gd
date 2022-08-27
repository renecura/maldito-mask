extends Control

func _on_Start():
	get_tree().change_scene("res://escenas/Juego.tscn")


func _on_BotonEquipo():
	get_tree().change_scene("res://escenas/Equipo.tscn")


func _on_Menu():
	get_tree().change_scene("res://escenas/Menu.tscn")
