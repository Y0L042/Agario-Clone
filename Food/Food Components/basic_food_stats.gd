extends Node

class_name FoodStats


@export var FoodValue: float : set = SetFoodValue, get = GetFoodValue
func SetFoodValue(newFoodValue: float) -> void:
	FoodValue = newFoodValue
func GetFoodValue() -> float:
	return FoodValue
