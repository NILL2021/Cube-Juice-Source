extends Control



onready var menu = $Menu
onready var restart = $Restart
	



func _on_Menu_pressed():
	if Process.paused == true:
		Process.paused = false
		get_tree().change_scene("res://menu.tscn")
		Music.play.playing = true




func _on_Restart_pressed():
	if Process.paused == true:
		Process.paused = false
		get_tree().reload_current_scene()
