extends Control
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _on_Options_pressed():
	var options = load("res://Options.tscn").instance()
	get_tree().current_scene.add_child(options)
#Code for quiting the game
func _on_Quit_pressed():
	get_tree().quit()
#Code for getting back to level1 when back buttun is pressed in the option scene
func _on_Back_pressed():
	get_tree().change_scene("res://Level.tscn")
#Code for going to the menu of level1
func _on_Menu_pressed():
	get_tree().change_scene("res://Menu.tscn")
#Code when about us button is pressed on the main menu interface
func _on_About_Us_pressed():
	get_tree().change_scene("res://About Us.tscn")
#Code for saving the game
func _on_Save_pressed():
	var save_file = File.new()
	save_file.open("C://Users//Harmony//Desktop//My First Game//Saved Games",File.WRITE)
	save_file.store_var(save_file)
	save_file.close()
#Code for loading the game
func _on_Load_pressed():
	var save_file = File.new()
	if !save_file.file_exists("C://Users//Harmony//Desktop//My First Game//Saved Games"):
		return
		save_file.open("C://Users//Harmony//Desktop//My First Game//Saved Games",File.READ)
		save_file.get_var()
		save_file.close()
		
	
