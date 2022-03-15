extends Spatial


onready var window_width = $Options/WWidth
onready var speedrun_box = $Options/SpeedrunEnabled
onready var goall = $Options/Goalsinglel
onready var goala = $Options/Goalanyp
var speedrun = false


func _process(delta):
	window_width.text = str(OS.get_window_safe_area())







func _on_SpeedrunEnabled_toggled(button_pressed):
	if speedrun == false:
		speedrun = true
		goall.editable = true
		goala.editable = true
	else:
		goall.editable = false
		goala.editable = false
		speedrun = false
	Process.speedrun = speedrun


func _on_Goalsinglel_text_changed(new_text):
		Process.goall = int(new_text)




func _on_Goalanyp_text_changed(new_text):
	Process.goala = int(new_text)
