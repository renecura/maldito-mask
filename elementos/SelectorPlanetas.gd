extends ColorRect

func _ready():
	hide()
	Events.connect(Events.SELECTOR_ABRIR, self, "show")

func _on_pressed(planeta):
	hide()
	Events.selector_identificar(planeta)
