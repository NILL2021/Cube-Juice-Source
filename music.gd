extends Node
var play

func _ready():
	play = AudioStreamPlayer.new()
	play.stream = preload("res://360608__sirkoto51__loading.wav")
	add_child(play)
	play.playing = true
	play.connect("finished", self, "_on_play_finished")

		
func music(path):
	play.playing = false
	play.stream = path
	play.playing = true


