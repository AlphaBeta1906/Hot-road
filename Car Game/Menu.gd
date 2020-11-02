extends Node2D




func _on_Button_pressed():
	get_tree().change_scene("res://Main.tscn")


func _on_Button3_pressed():
	get_tree().quit()


func _on_Button2_pressed():
	$Label.show()
	$Button.hide()
	$Button2.hide()
	$Button3.hide()
	


func _on_Back_pressed():
	$Label.hide()
	$Button.show()
	$Button2.show()
	$Button3.show()
