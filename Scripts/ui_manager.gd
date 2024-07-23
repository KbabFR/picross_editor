extends Control

signal export
signal resizex
signal resizey

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_export_pressed():
	export.emit()


func _on_hauteur_up_pressed():
	Global.size.y += 5
	resizey.emit()

func _on_hauteur_down_pressed():
	Global.size.y -= 5
	resizey.emit()

func _on_largeur_up_pressed():
	Global.size.x += 5
	resizex.emit()

func _on_largeur_down_pressed():
	Global.size.x -= 5
	resizex.emit()
