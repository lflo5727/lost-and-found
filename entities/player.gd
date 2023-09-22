extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta):
	var direction = Input.get_vector("walk_left", "walk_right", "walk_up", "walk_down")
	velocity = direction * SPEED
	
	# Handle diagonal movement
	if direction.x > 0:
		$AnimatedSprite2D.play("walk-right")
	if direction.x < 0:
		$AnimatedSprite2D.play("walk-left")
	if direction.y < 0:
		$AnimatedSprite2D.play("walk-up")
	if direction.y > 0:
		$AnimatedSprite2D.play("walk-down")
		

	move_and_slide()
