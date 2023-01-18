extends Node

class_name EntityStatsComponent


@export var InitialHealth: float
var _health: float = InitialHealth : set = SetHealth, get = GetHealth
func SetHealth(newHealth: float) -> void:
	_health = newHealth
func GetHealth() -> float:
	return _health

signal SizeChanged
@export var InitialSize: float
var _size: float = InitialSize : set = SetSize, get = GetSize
func SetSize(newSize: float) -> void:
	_size = newSize
	SizeChanged.emit(GetSize())
func GetSize() -> float:
	return _size

@export var InitialSpeed: float
var _speed: float = InitialSpeed : set = SetSpeed, get = GetSpeed
func SetSpeed(newSpeed: float) -> void:
	_speed = newSpeed
func GetSpeed() -> float:
	return _speed

func Grow(growValue: float) -> void:
	_health += growValue
	_size += growValue
