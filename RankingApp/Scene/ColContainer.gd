extends HBoxContainer

const MAX_ELEMENT_COLUMN = 15

export(Resource) var ItemContainer
export(Resource) var EmptyContainer

func _ready():
	renderItems()
	pass

func ClearItems():
	var chilitems = $Col1.get_children() + $Col2.get_children() + $Col3.get_children()
	if chilitems != null:
		for item in chilitems:
			item.queue_free()
	pass

func renderItems():
	var _i = 0
	for data in ParseDataArray._main_data:
		if _i < MAX_ELEMENT_COLUMN:
			var item = ItemContainer.instance()
			item.data = data
			if _i == 0:
				item.modulate = Color.gray
			if _i == 1:
				item.modulate = Color(1,0.75,0.2,1)
			if _i > 1 and _i <= 3:
				item.modulate = Color(1,0.9,0.5,1)
			$Col1.add_child(item)
		if _i >= MAX_ELEMENT_COLUMN and _i < MAX_ELEMENT_COLUMN*2:
			if _i == MAX_ELEMENT_COLUMN:
				var empty = EmptyContainer.instance()
				empty.data = []
				$Col2.add_child(empty)
			else:
				var item = ItemContainer.instance()
				item.data = data
				$Col2.add_child(item)
		if _i >= MAX_ELEMENT_COLUMN*2 and _i < MAX_ELEMENT_COLUMN*3:
			if _i == MAX_ELEMENT_COLUMN*2:
				var empty = EmptyContainer.instance()
				empty.data = []
				$Col3.add_child(empty)
			else:
				var item = ItemContainer.instance()
				item.data = data
				$Col3.add_child(item)
		_i += 1
	if _i < MAX_ELEMENT_COLUMN*3:
		while _i < MAX_ELEMENT_COLUMN*3:
			if _i < MAX_ELEMENT_COLUMN:
				var empty = EmptyContainer.instance()
				empty.data = []
				$Col1.add_child(empty)
			if _i >= MAX_ELEMENT_COLUMN and _i < MAX_ELEMENT_COLUMN*2:
				var empty = EmptyContainer.instance()
				empty.data = []
				$Col2.add_child(empty)
			if _i >= MAX_ELEMENT_COLUMN*2 and _i < MAX_ELEMENT_COLUMN*3:
				var empty = EmptyContainer.instance()
				empty.data = []
				$Col3.add_child(empty)
			_i += 1
	pass


func _on_ColContainer_clear():
	ClearItems()
	pass # Replace with function body.


func _on_ColContainer_refresh():
	ClearItems()
	renderItems()
	pass # Replace with function body.
