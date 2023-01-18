extends Area2D

class_name ActionFieldComponent

signal FoodAction

func _ready() -> void:
	self.body_entered.connect(OnBodyEntered)
	self.body_exited.connect(OnBodyExited)



func OnBodyEntered(body: Node2D) -> void:
	if body.is_in_group("Food"):
		FoodAction.emit(body.get_parent())



func OnBodyExited(body: Node2D) -> void:
	pass
