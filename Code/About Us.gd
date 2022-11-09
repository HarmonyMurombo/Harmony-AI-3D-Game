extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
#Code whe
func _on_Button_pressed():
	pass # Replace with function body.
	#Code when back button is pressed on about us scene
func _on_Back_About_Us_button_pressed():
	get_tree().change_scene("res://Main_menu.tscn")
