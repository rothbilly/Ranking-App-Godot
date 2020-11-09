extends HBoxContainer

signal clear
signal refresh


func _on_Button_pressed(): #Button 1
	pass # Replace with function body.


func _on_Button2_pressed():
	ParseDataArray.Clear_Data()
	emit_signal("clear")
	
	
	pass # Replace with function body.


func _on_Button3_pressed():
	pass # Replace with function body.


func _on_Button4_pressed():
	ParseDataArray.Get_data()
	emit_signal("refresh")
	
	pass # Replace with function body.
