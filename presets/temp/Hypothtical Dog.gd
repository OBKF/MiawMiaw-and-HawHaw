extends RigidBody2D
export var force=70


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _input(event):
	if (event.is_action_pressed("ui_accept")):
		apply_impulse(Vector2(0,0),Vector2(force,0))


