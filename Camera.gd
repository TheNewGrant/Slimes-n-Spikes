extends Node2D


func _on_ToBad1_body_entered(_body):
	$Frame1.current = false
	$Bad1.current = true


func _on_ToBad2_body_entered(_body):
	$Bad1.current = false
	$Bad2.current = true


func _on_ToBad3_body_entered(_body):
	$Bad2.current = false
	$Bad3.current = true


func _on_ToBad4_body_entered(_body):
	$Bad3.current = false
	$Bad4.current = true


func _on_ToBad5_body_entered(_body):
	$Bad4.current = false
	$Bad5.current = true


func _on_ToBad6_body_entered(_body):
	$Bad5.current = false
	$Bad6.current = true


func _on_ToBadEnd_body_entered(_body):
	$Bad6.current = false
	$BadEnd.current = true

func _on_ToGood1_body_entered(_body):
	$Frame1.current = false
	$Good1.current = true


func _on_ToGood2_body_entered(_body):
	$Good1.current = false
	$Good2.current = true


func _on_ToGood3_body_entered(_body):
	$Good2.current = false
	$Good3.current = true


func _on_ToGood4_body_entered(_body):
	$Good3.current = false
	$Good4.current = true


func _on_ToGood5_body_entered(_body):
	$Good4.current = false
	$Good5.current = true


func _on_ToGood6_body_entered(_body):
	$Good5.current = false
	$Good6.current = true


func _on_ToGoodEnd_body_entered(_body):
	$Good6.current = false
	$GoodEnd.current = true


func _on_ToSecret1_body_entered(_body):
	$Good2.current = false
	$Secret1.current = true


func _on_ToSecret2_body_entered(_body):
	$Secret1.current = false
	$Secret2.current = true


func _on_ToSecret3_body_entered(_body):
	$Secret2.current = false
	$Secret3.current = true


func _on_ToSecret32_body_entered(_body):
	$Bad2.current = false
	$Secret3.current = true


func _on_ToSecret4_body_entered(_body):
	$Secret3.current = false
	$Secret4.current = true


func _on_ToSecret5_body_entered(_body):
	$Secret4.current = false
	$Secret5.current = true


func _on_ToSecret6_body_entered(_body):
	$Secret5.current = false
	$SecretEnd.current = true


func _on_Menu_setup():
		$Frame1.current = true
		$Bad1.current = false
		$Bad3.current = false
		$Bad4.current = false
		$Bad5.current = false
		$Bad6.current = false
		$BadEnd.current = false
		$Good1.current = false
		$Good2.current = false
		$Good3.current = false
		$Good4.current = false
		$Good5.current = false
		$Good6.current = false
		$GoodEnd.current = false
		$Secret1.current = false
		$Secret2.current = false
		$Secret3.current = false
		$Secret4.current = false
		$Secret5.current = false
		$SecretEnd.current = false


func _on_Ending_end():
	$Frame1.current = true
	$Bad1.current = false
	$Bad3.current = false
	$Bad4.current = false
	$Bad5.current = false
	$Bad6.current = false
	$BadEnd.current = false
	$Good1.current = false
	$Good2.current = false
	$Good3.current = false
	$Good4.current = false
	$Good5.current = false
	$Good6.current = false
	$GoodEnd.current = false
	$Secret1.current = false
	$Secret2.current = false
	$Secret3.current = false
	$Secret4.current = false
	$Secret5.current = false
	$SecretEnd.current = false


#func _on_Dungeon_good():
#	$Frame1.current = true
#	$Bad1.current = false
#	$Bad3.current = false
#	$Bad4.current = false
#	$Bad5.current = false
#	$Bad6.current = false
#	$BadEnd.current = false
#	$Good1.current = false
#	$Good2.current = false
#	$Good3.current = false
#	$Good4.current = false
#	$Good5.current = false
#	$Good6.current = false
#	$GoodEnd.current = false
#	$Secret1.current = false
#	$Secret2.current = false
#	$Secret3.current = false
#	$Secret4.current = false
#	$Secret5.current = false
#	$SecretEnd.current = false


#func _on_Dungeon_secret():
#	$Frame1.current = true
#	$Bad1.current = false
#	$Bad3.current = false
#	$Bad4.current = false
#	$Bad5.current = false
#	$Bad6.current = false
#	$BadEnd.current = false
#	$Good1.current = false
#	$Good2.current = false
#	$Good3.current = false
#	$Good4.current = false
#	$Good5.current = false
#	$Good6.current = false
#	$GoodEnd.current = false
#	$Secret1.current = false
#	$Secret2.current = false
#	$Secret3.current = false
#	$Secret4.current = false
#	$Secret5.current = false
#	$SecretEnd.current = false
