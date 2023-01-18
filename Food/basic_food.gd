extends Node2D

class_name Food

@export var _foodStats: FoodStats : get = GetFoodStats
func GetFoodStats() -> FoodStats:
	return _foodStats

func EatFood() -> float:
	call_deferred('free')
	return GetFoodStats().GetFoodValue()
