extends Control

var path = "res://Data/Ranking.csv"

func _ready():
	Get_data()
	pass

func Get_data():
	var _mainData = {} ##diccionario vacio
	var file = File.new()
	file.open(path, file.READ)
	
	while !file.eof_reached(): # recorre cada fila
		var data_set = Array(file.get_csv_line())
		_mainData[_mainData.size()] = data_set # _main_data[0] = [N, INTEGRANTES, Total]

		
	file.close()
	print( _mainData)
	return _mainData
