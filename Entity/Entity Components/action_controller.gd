extends Node

@export var _enitityRoot: Node2D
@export var _characterBodyColShape: CollisionShape2D
@export var _statsComponent: EntityStatsComponent
@export var _actionFieldComponent: ActionFieldComponent

func _ready() -> void:
	if is_instance_valid(_actionFieldComponent):
		_actionFieldComponent.FoodAction.connect(EatFood)

func EatFood(foodItem: Food) -> void:
	var foodValue: int = foodItem.EatFood()
	if is_instance_valid(_statsComponent):
		_statsComponent.Grow(foodValue)

