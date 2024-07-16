extends Control

var state: int = 0
const BLACK_PATH = "res://Assets/Carre.png"
const EMPTY_PATH = "res://Assets/Null.png"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func switch_state():
	state = Global.current_tool
	match state:
		1:
			get_node("Image").texture = load(BLACK_PATH)
		_:
			get_node("Image").texture = load(EMPTY_PATH)

func _on_gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			switch_state()
