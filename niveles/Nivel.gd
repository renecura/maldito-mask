extends Control

export var estacion: int = 0

func _ready():
	GM.estacion = estacion

func verificar() -> bool:
	var rs = true
	for planeta in $Planetas.get_children():
		rs = planeta.verificar() && rs
	print("Verificacion: ", rs)
	return rs
