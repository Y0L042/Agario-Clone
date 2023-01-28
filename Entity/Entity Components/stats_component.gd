extends Node

class_name EntityStatsComponent


@export var _health: float : set = SetHealth, get = GetHealth
func SetHealth(newHealth: float) -> void:
	_health = newHealth
func GetHealth() -> float:
	return _health

signal SizeChanged
@export var _size: float : set = SetSize, get = GetSize
func SetSize(newSize: float) -> void:
	_size = newSize
	SizeChanged.emit(GetSize())
func GetSize() -> float:
	return _size


@export var _speed: float : set = SetSpeed, get = GetSpeed
func SetSpeed(newSpeed: float) -> void:
	_speed = newSpeed
func GetSpeed() -> float:
	return _speed

func Grow(growValue: float) -> void:
	_health += growValue
	_size += growValue


func _ready() -> void:
	SizeChanged.emit(GetSize())
