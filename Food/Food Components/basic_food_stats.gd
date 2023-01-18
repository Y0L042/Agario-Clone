extends Node

class_name FoodStats

@export var InitialFoodValue: float
var FoodValue: float = InitialFoodValue : set = SetFoodValue, get = GetFoodValue
func SetFoodValue(newFoodValue: float) -> void:
	FoodValue = newFoodValue
func GetFoodValue() -> float:
	return FoodValue
