extends MarginContainer

var data = []

onready var list_number = $NinePatchRect/MarginContainer/HBoxContainer/Label
onready var person_name = $NinePatchRect/MarginContainer/HBoxContainer/Label2
onready var points = $NinePatchRect/MarginContainer/HBoxContainer/Label3

func _process(delta):
	if data != []:
		list_number.text = str(data[0])
		person_name.text = str(data[1])
		points.text = str(data[2])
