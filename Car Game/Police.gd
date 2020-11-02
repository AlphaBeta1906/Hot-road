extends Area2D
var motion = Vector2()

func _physics_process(delta):
	motion.y = 5
	translate(motion)
	$AnimatedSprite.play("Police")
