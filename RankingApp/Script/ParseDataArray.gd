extends Control

var path = "res://Data/Ranking.csv"
var _main_data

func _ready():
	_main_data = Get_data()

func Get_data():
	var _mainData = [] ##array vacía
	var file = File.new()
	file.open(path, file.READ)
	
	while !file.eof_reached(): # recorre cada fila
		var data_set = Array(file.get_csv_line())
		_mainData.append(data_set) # _main_data[0] = [N, INTEGRANTES, Total]

		
	file.close()
	print( _mainData)
	return _mainData
