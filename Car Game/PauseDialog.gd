extends PopupDialog

func _on_Button_pressed():
	get_tree().paused = false
	$".".hide()

func _on_WindowDialog_popup_hide():
	pass

func _on_Button2_pressed():
	get_tree().change_scene("res://Menu.tscn")

func _on_Button3_pressed():
	get_tree().quit()

func _on_Pause_pressed():
	get_tree().paused = true
	$".".show()
