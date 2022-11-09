extends Spatial
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
#Code for displaying the main menu scene when escape buttun is pressed in level_1(one)
func _input(event):
	if Input.is_action_pressed("ui_main_menu"):
		get_tree().change_scene("res://Main_menu.tscn")

