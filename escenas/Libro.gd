extends PopupPanel

var c = 0

func _on_Cerrado_pressed():
	SFX.play("book/open")
	$Cerrado.hide()
	$Abierto.show()
	c = 0


func _on_Abierto_pressed():
	SFX.play("book/page")
	# Siguiente página
	$Abierto.get_child(c).hide()
	c = (c + 1) % $Abierto.get_child_count()
	$Abierto.get_child(c).show()
