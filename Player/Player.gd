extends KinematicBody2D

signal hurt

var movement = Vector2()
var respawn_loc = Vector2(180, 220)

var death = 0
var can_hurt = true

var speed = 200
var left_speed = -200
var jump_speed = -400
var gravity = 750



var can_jump = true
var air_jump = true

#var left = Input.is_action_pressed("Left")
#var right = Input.is_action_pressed("Right")
#var jump = Input.is_action_just_pressed("Jump")

const FLOOR_NORMAL = Vector2(0, -1)


func _ready():
	#$CollisionShape2D.disabled = true
	#$Area2D/CollisionShape2D.disabled = true
	pass


func _physics_process(delta):
	movement.y += gravity * delta
	if is_on_floor():
		can_jump = true
		air_jump = true
	if movement.y < 0:
		$Sprite.animation = "Fall"
	elif movement.y == 0:
		$Sprite.animation = "Idle"
	move()
		
	movement = move_and_slide(movement, FLOOR_NORMAL)


func move():
	if Input.is_action_pressed("Right"):
#		if speed < 0:
#			speed *= -1
		movement.x = speed
		$Sprite.flip_h = true
		$Sprite.animation = "Idle"
		#$Moving.direction = Vector2(1, 0)
		if Input.is_action_just_pressed("Jump"):
			if is_on_floor():
				if can_jump:
					can_jump = false
					movement.y = jump_speed
					$Sprite.animation = "Jump"
					#$Jump.emitting = true
					$SmallSlime.emitting = true
					$Jump2.playing = true
				else: 
					pass
			elif not is_on_floor():
				if air_jump:
					air_jump = false
					movement.y = jump_speed
					$Sprite.animation = "Jump"
					#$Jump.emitting = true
					$SmallSlime.emitting = true
					$Jump2.playing = true
				else:
					pass
		elif is_on_floor():
			#$SmallSlime.emitting = false
			$Moving.emitting = true
		elif not is_on_floor():
			$Moving.emitting = false
	elif Input.is_action_pressed("Left"):
#		if speed > 0:
#			speed *= -1
		movement.x = left_speed
		$Sprite.flip_h = false
		$Sprite.animation = "Idle"
		$Moving.emitting = true
		#$Moving.direction = Vector2(-1, 0)
		if Input.is_action_just_pressed("Jump"):
			if is_on_floor():
				if can_jump:
					can_jump = false
					movement.y = jump_speed
					$Sprite.animation = "Jump"
					#$Jump.emitting = true
					$SmallSlime.emitting = true
					$Jump2.playing = true
				else: 
					pass
			elif not is_on_floor():
				if air_jump:
					air_jump = false
					movement.y = jump_speed
					$Sprite.animation = "Jump"
					#$Jump.emitting = true
					$SmallSlime.emitting = true
					$Jump2.playing = true
				else:
					pass
		elif is_on_floor():
			#$SmallSlime.emitting = false
			$Moving.emitting = true
		elif not is_on_floor():
			$Moving.emitting = false
	elif Input.is_action_just_pressed("Jump"):
		if is_on_floor():
			if can_jump:
				can_jump = false
				movement.y = jump_speed
				#$Jump.emitting = true
				$SmallSlime.emitting = true
				$Jump2.playing = true
			else: 
				pass
		elif not is_on_floor():
			if air_jump:
				air_jump = false
				movement.y = jump_speed
				#$Jump.emitting = true
				$SmallSlime.emitting = true
				$Jump2.playing = true
			else:
				pass
	else:
		#$SmallSlime.emitting = false
		$Moving.emitting = false
		movement.x = 0


func _on_Area2D_body_entered(body):
	if body.is_in_group("Spike"):
		if can_hurt:
			#$Death.emitting = true
			$Timer.start()
			$Dead.playing = true
			self.set_global_position(respawn_loc)
			$Revive.emitting = true
			death += 1
			can_hurt = false
		print(death)
		emit_signal("hurt")
	elif body.is_in_group("Respawn"):
		respawn_loc = self.get_global_position()


func _on_Area2D_area_entered(area):
	if area.is_in_group("Respawn"):
		respawn_loc = self.get_global_position()


func _on_Timer_timeout():
	can_hurt = true


func _on_Jump2_finished():
	$Jump2.playing = false


func _on_Dead_finished():
	$Dead.playing = false


func _on_Menu_start():
	#$CollisionShape2D.disabled = false
	#$Area2D/CollisionShape2D.disabled = false
	pass


func _on_Menu_setup():
	self.position = Vector2(180, 220)


func _on_Ending_end():
	self.position = Vector2(180, 220)


#func _on_Dungeon_good():
#	self.position = Vector2(180, 220)


#func _on_Dungeon_secret():
#	self.position = Vector2(180, 220)
