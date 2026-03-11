extends PathFollow3D


var move = 0
var speed = 0



func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress_ratio += move
	move = speed
	if Input.is_action_just_released("ui_up"):
		speed += 0.01 * delta
	if Input.is_action_just_released("ui_down"):
		speed -= 0.01 * delta
	if Input.is_action_just_released("key_space"):
		speed = 0
		move = 0 
