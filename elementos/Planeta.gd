extends TextureButton

export var data: Resource

export var imagen_bloqueada: bool
export var corrimiento_bloqueada: bool
export var elementos_bloqueada: bool

export var identificado: String = "" setget set_identificado, get_identificado

func _ready():
	pass

func verificar() -> bool:
	if identificado == data.nombre or !visible:
		$Label.self_modulate = Color.green
		return true
	
	$Label.self_modulate = Color.red
	return false


func _on_Planeta_button_down():
	SFX.play("planet/selection")
	Events.planeta_seleccionado(self)

func set_identificado(value):
	identificado = value
	$Label.text = value
	$Label.self_modulate = Color.white
	
func get_identificado():
	return identificado
