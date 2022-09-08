extends Control

export var cantidad: int = 100

var espectro: Array

func _ready():
	generar()

func generar():
	var c = $Espectro/Color
	var e = $Espectro
	for i in range(cantidad-1):
		var nc: ColorRect = c.duplicate()
		nc.color = Color.from_hsv(float(i)/cantidad, 1, 0)
		e.add_child(nc)
	espectro = e.get_children()

func bloquear():
	setear(-1, -1)

func setear(primario: float, secundario: float):
	for e in espectro:
		e.color.v = 0.0
	
	if primario < 0:
		return
	
	var pidx = int(round(primario * cantidad))
	
	espectro[pidx-1].color = Color.from_hsv(float(pidx-1)/cantidad, 1, 1)
	espectro[pidx].color = Color.from_hsv(float(pidx)/cantidad, 1, 1)
	espectro[pidx+1].color = Color.from_hsv(float(pidx+1)/cantidad, 1, 1)

	var sidx = int(round(secundario * cantidad))
	
	espectro[sidx].color = Color.from_hsv(float(sidx)/cantidad, 1, 1)
