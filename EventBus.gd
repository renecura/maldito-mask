extends Node

signal planeta_seleccionado(planeta)
const PLANETA_SELECCIONADO = "planeta_seleccionado"
func planeta_seleccionado(planeta):
	emit_signal(PLANETA_SELECCIONADO, planeta)
	
signal selector_abrir()
const SELECTOR_ABRIR = "selector_abrir"
func selector_abrir():
	emit_signal(SELECTOR_ABRIR)

signal selector_identificar(planeta)
const SELECTOR_IDENTIFICAR = "selector_identificar"
func selector_identificar(planeta):
	emit_signal(SELECTOR_IDENTIFICAR, planeta)
