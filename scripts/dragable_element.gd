extends RigidBody2D

export var speed_factor = 1

var draggable = false

func _ready():
	connect("input_event", self, "_on_input_event")
	pass

func _physics_process(delta):
	if draggable:
		var drag_speed = weight * gravity_scale * speed_factor
		var r = (get_viewport().get_mouse_position() - position) * drag_speed
		linear_velocity = r

func _on_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("tap"):
		draggable = true
	else:
		draggable = false


