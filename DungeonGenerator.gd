extends TileMap

# tilemap variables
var map = []
const mapWidth = 500
const mapHeight = 500
enum TileType {Empty = -1, Floor = 1, Wall = 2}

# random number generator and random constants
var rng = RandomNumberGenerator.new()
const minRoomSize = 2
const maxRoomSize = 5

# room variables
var Room: = load("res://Room.gd")
var rooms = []

func _ready() -> void:
	map = make_2d_array()
	rng.randomize()

	#randomize room size
	# find middle of tilempa
	var startX = mapWidth / 2
	var startY = mapHeight / 2
	#random width
	var width = rng.randi_range(minRoomSize, maxRoomSize)
	#random height
	var height = rng.randi_range(minRoomSize, maxRoomSize)
	for x in width:
		for y in height:
			map[x + startX][y + startY] = TileType.Floor
	
	# assign tiles from 2d array to tilemap
	for x in mapWidth:
		for y in mapHeight:
			set_cell(x, y, map[x][y])

func make_2d_array():
	var array = []
	for x in mapWidth:
		array.append([])
		for y in mapHeight:
			array[x].append(TileType.Empty)
	return array
