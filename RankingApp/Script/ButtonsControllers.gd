extends HBoxContainer

signal clear
signal refresh

var path = "res://Data/Ranking.csv"
var file_id = "18i-S0R2SfzNb9rCH_8d71BcFXxQJ4L9lPkYID-rR43Q"

func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")

func _on_Button_pressed(): #Button 1 import
	$HTTPRequest.request("https://docs.google.com/spreadsheets/d/18i-S0R2SfzNb9rCH_8d71BcFXxQJ4L9lPkYID-rR43Q/gviz/tq?tqx=out:csv&sheet=Ranking")
	pass # Replace with function body.
	


func _on_Button2_pressed(): # clear
	ParseDataArray.Clear_Data()
	emit_signal("clear")
	



func _on_Button4_pressed(): #refresh
	ParseDataArray.Get_data()
	emit_signal("refresh")
	


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	print(body)
