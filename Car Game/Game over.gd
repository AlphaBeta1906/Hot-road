extends Node2D


func _ready():
	var result = str(Global.score_total)
	$Title.text += result


func _on_Restart_pressed():
	get_tree().change_scene("res://Main.tscn")
	Global.score_total = 0
	Global.reset()

func _on_Quit_pressed():
	get_tree().quit()
