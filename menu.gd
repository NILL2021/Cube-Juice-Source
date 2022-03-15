extends Spatial


onready var level = $LevelSelect
onready var options = $Options
onready var help = $Help
onready var cam = preload("res://environmentmenu.tres")

func _ready():
	pass
		



func _on_Help_pressed():
	get_tree().change_scene("res://help.tscn")


func _on_Options_pressed():
	get_tree().change_scene("res://options.tscn")


func _on_LevelSelect_pressed():
	get_tree().change_scene("res://select.tscn")
