extends KinematicBody
var vel = Vector3(2,0,0)
var speed = 6
onready var r1 = $RayCast
onready var r2 = $RayCast2
onready var r3 = $RayCast3
onready var r4 = $RayCast4
onready var audio = $AudioStreamPlayer3D
onready var timer = $Timer

func _process(delta):
	move_and_slide(vel)

func _on_Timer_timeout():
	vel = -vel
	audio.playing = true
