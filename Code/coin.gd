extends Area
signal coinCollected
func _ready():
	pass
func _physics_process(delta):
	rotate_y(deg2rad(5))
	
func _on_coin_body_entered(body):
	if body.name == "Steve":
		$AnimationPlayer.play("static")
		$Timer.start()
		$SoundCoinCollect.play()
func _on_Timer_timeout():
	emit_signal("coinCollected")
	queue_free()
