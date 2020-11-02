extends Node2D
var score = 0
onready var Red_Car = preload("res://Red car.tscn")
onready var Ambulance = preload("res://Ambulance.tscn")
onready var Van = preload("res://Van.tscn")
onready var Truck =  preload("res://Mini truck.tscn")
onready var Yellow = preload("res://Yellow car.tscn")
onready var Taxi = preload("res://Taxi.tscn")
onready var BigTruck =  preload("res://Truck.tscn")

func _ready():
	_add_Wall(Vector2(0,67),Vector2(70,1000000000))
	_add_Wall(Vector2(406,353),Vector2(55,1000000000))
func _on_Timer_timeout():
	$Timer.wait_time = rand_range(0.9,1)
	var Car = [Red_Car,Ambulance,Van,Truck,Yellow,Taxi,BigTruck]
	var random = randi()%Car.size()
	var car = Car[random].instance()
	add_child(car)
	car.position = Vector2(rand_range(120,315),-32)


func _add_Wall(posittion:Vector2,size:Vector2):
	var rect = RectangleShape2D.new()
	rect.set_extents(size)
	var collision = CollisionShape2D.new()
	collision.shape = rect
	var collision_object = StaticBody2D.new()
	collision_object.position =  posittion
	collision_object.add_child(collision)
	
	add_child(collision_object)

func _on_Player_Score():
	Global.score_total += 1
	var Scored = str(Global.score_total)
	$Label2.text = Scored



func _physics_process(delta):
	if Input.is_key_pressed(KEY_P):
		get_tree().paused = true
		$WindowDialog.show()
		print("pause")








