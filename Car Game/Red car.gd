extends Area2D
var motion = Vector2()


func _physics_process(delta):
	motion.y = 5
	translate(motion)
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene("res://Game over.tscn")

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

