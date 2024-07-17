extends Node2D

const TILE_PATH = "res://Prefabs/tile.tscn"
const STEP = 64
const USER_PATH = "user://"
var board: Array
var current_size: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_tile()


func spawn_tile():
	current_size = Global.size
	board.resize(current_size.y)
	for y in range(current_size.y):
		var line: Array
		line.resize(current_size.x)
		for x in range(current_size.x):
			var tile = load(TILE_PATH).instantiate()
			tile.position = Vector2(STEP * x, STEP * y)
			line[x] = tile
			add_child(tile)
		board[y] = line


func export():
	var export: Array
	for y in range(board.size()):
		var line: Array
		for x in range(board[0].size()):
			line.append(board[y][x].state)
		export.append(line)
	#generate_file(export)


func generate_file(nono: Array):
	#Global.get_name_file()
	var num = 1
	while FileAccess.file_exists(USER_PATH + String.num_int64(num) + ".txt"):
		num += 1
		print("+1")
	var file = FileAccess.open(USER_PATH + String.num_int64(num) + ".txt",FileAccess.WRITE)
	file.store_var(nono)
	file.close()


func resize():
	pass
