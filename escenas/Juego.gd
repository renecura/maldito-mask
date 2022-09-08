extends Control

var nivel

func _ready():
	var scene = load("res://niveles/Nivel0" + str(GM.nivel) + ".tscn")
	nivel = scene.instance()
	add_child_below_node($Top, nivel)
	$TextosNiveles.get_child(GM.nivel-1).show()


func _on_Enviar_pressed():
	SFX.play("menu/mouse-push-button")
	# Acá va la lógica de ganar
	if nivel.verificar():
		GM.next_level()
	
