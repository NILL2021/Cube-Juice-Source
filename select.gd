extends Spatial




func _on_Button_pressed():
	get_tree().change_scene("res://level1.tscn")
	Process.level = 1
	Music.play.playing = false



func _on_Button2_pressed():
	get_tree().change_scene("res://level2.tscn")
	Process.level = 2
	Music.play.playing = false



func _on_Button3_pressed():
	get_tree().change_scene("res://level3.tscn")
	Process.level = 3
	Music.play.playing = false
	
	
	




func _on_Button4_pressed():
	get_tree().change_scene("res://level4.tscn")
	Process.level = 4
	Music.play.playing = false

func _on_Button5_pressed():
	get_tree().change_scene("res://level5.tscn")
	Process.level = 5
	Music.play.playing = false


func _on_Button6_pressed():
	get_tree().change_scene("res://level6.tscn")
	Process.level = 6
	Music.play.playing = false


func _on_Button7_pressed():
	get_tree().change_scene("res://level7.tscn")
	Process.level = 7
	Music.play.playing = false


func _on_Button8_pressed():
	get_tree().change_scene("res://level8.tscn")
	Process.level = 8
	Music.play.playing = false


func _on_Button9_pressed():
	get_tree().change_scene("res://level9.tscn")
	Process.level = 9
	Music.play.playing = false

func _on_Button10_pressed():
	get_tree().change_scene("res://level10.tscn")
	Process.level = 10
	Music.play.playing = false

func _on_Button11_pressed():
	get_tree().change_scene("res://level11.tscn")
	Process.level = 11
	Music.play.playing = false
