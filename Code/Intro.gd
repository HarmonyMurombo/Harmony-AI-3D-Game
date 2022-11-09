extends Node2D

func _ready():
	$AnimationPlayer.play("Fade in")
	yield(get_tree().create_timer(6),"timeout")
	$AnimationPlayer.play("Fade out")
	yield(get_tree().create_timer(3),"timeout") #My timeout of 4 seconds to display the menu scene
	get_tree().change_scene("res://Quiz.tscn") #Changing the scene to the one that i want to display
	

