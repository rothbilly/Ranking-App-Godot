extends Control

var path = "res://Data/Ranking.csv"
var file_id = "18i-S0R2SfzNb9rCH_8d71BcFXxQJ4L9lPkYID-rR43Q"

var _main_data

func _ready():
	 Get_data()


func Get_data():
	var _mainData = [] ##array vacía
	var file = File.new()
	
	file.open(path, file.READ)
	
	while !file.eof_reached(): # recorre cada fila
		var data_set = Array(file.get_csv_line())
		_mainData.append(data_set) # _main_data[0] = [N, INTEGRANTES, Total]

	file.close()
	print( _mainData)
	_main_data = _mainData ##local to global
	

func Clear_Data():
	_main_data.clear()
	
