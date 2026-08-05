extends CharacterBody2D

var direction_x: float
var speed := 50

func get_input():
	direction_x = Input.get_axis("left", "right")
	print(direction_x)

func _physics_process(_delta: float) -> void:
	get_input()
	velocity.x = direction_x * speed
	move_and_slide()
