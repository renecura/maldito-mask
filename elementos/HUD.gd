extends Control


onready var indicador = $"%Indicador"
onready var espectro = $"%Espectrometro"

var satelite: Texture = preload("res://assets/elementos/starlonk.jpg")

var seleccionado

func _ready():
	Events.connect("planeta_seleccionado", self, "mostrar_planeta")
	Events.connect(Events.SELECTOR_IDENTIFICAR, self, "identificar")
	SFX.stop("planet/interference")

func identificar(nombre):
	if seleccionado:
		seleccionado.identificado = nombre

func mostrar_planeta(planeta):
	seleccionado = planeta
	
	if planeta.imagen_bloqueada:
		$Planeta.texture = satelite
	else:
		$Planeta.texture = planeta.data.imagen
	
	if planeta.corrimiento_bloqueada:
		SFX.play("planet/interference")
		$"%Interferencia".show()
		$"%Indicador".hide()
		$"%Corrimiento".hide()
	else:
		$"%Indicador".rect_position.x = planeta.data.corrimiento[GM.estacion] * $"%Indicador".rect_size.x - 32
		$"%Interferencia".hide()
		$"%Indicador".show()
		$"%Corrimiento".show()
	
	if planeta.elementos_bloqueada:
		espectro.bloquear()
	else:
		espectro.setear(planeta.data.espectro_primario, planeta.data.espectro_secundario)


func _on_Identificar_pressed():
	SFX.play("menu/mouse-push-button")
	Events.selector_abrir()

#func _input(event):
#	if event.is_action_pressed("ui_accept"):
#		GM.estacion = (GM.estacion + 1) % 4
#		print(GM.estacion)
#		mostrar_planeta(seleccionado)


func _on_Libro_pressed():
	SFX.play("menu/mouse-push-button")
	$"%Libro".popup()


func _on_Datos_pressed():
	SFX.play("menu/mouse-push-button")
	$"%Info".popup()
