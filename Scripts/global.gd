extends Node

#
var current_tool: int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func change_tool(tool: int):
	current_tool = tool
