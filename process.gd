extends Node

var speedrun =  false
var goall = 60
var goala = 60
var level = 0
var paused = false
var blue_only = false
var red_only = false
var imobile_time = 3


var theme = "Default"
	
func _ready():
	get_tree().change_scene("res://menu.tscn")

func win():
	print("You win!")
	level += 1
	get_tree().change_scene("level"+str(level)+".tscn")
