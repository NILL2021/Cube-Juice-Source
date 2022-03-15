extends KinematicBody
var vel = Vector3()
var speed = 100
onready var r1 = $RayCast
onready var r2 = $RayCast2
onready var r3 = $RayCast3
onready var r4 = $RayCast4
onready var shape = $MeshInstance
onready var timer = $Timer
onready var Game = get_tree().current_scene.get_node("Node2D")
onready var effect = $AudioStreamPlayer3D
var moveable = true

func win():
	queue_free()
	Game.progress += rand_range(10, 35)
	Game.upd()
	
func transform_into_ded():
	timer.start()
# Declare member variables here. Examples:
func _process(delta):
	timer.wait_time = int(Process.imobile_time)
	if Process.paused == false:
		if moveable:
			if Input.is_action_pressed("blue_forward"):
				vel.x = speed
			elif Input.is_action_pressed("blue_back"):
				vel.x = -speed

			elif Input.is_action_pressed("blue_right"):
				vel.z = speed
			else:
				vel = Vector3(0,0,0)
			move_and_slide(vel * delta)
		else:
			pass
		
		if r1.is_colliding() or r2.is_colliding() or r3.is_colliding() or r4.is_colliding():
			if moveable == true:
				transform_into_ded()
			moveable = false
			shape.material_override = preload("res://black.tres")
			effect.stream = preload("hitHurt.wav")
			effect.playing = true
		if translation.z >= 22.25:
			win()


func _on_Timer_timeout():
	queue_free()
