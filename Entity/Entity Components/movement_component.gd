extends Node

class_name MovementComponent

@export var _maxSpeed: float : set = SetMaxSpeed, get = GetMaxSpeed
func SetMaxSpeed(newMaxSpeed: float) -> void:
	_maxSpeed = newMaxSpeed
func GetMaxSpeed() -> float:
	return _maxSpeed

var _velocity: Vector2



func MoveInDirection(direction: Vector2, characterBody: CharacterBody2D) -> void:
	_velocity = direction * _maxSpeed
	Move(characterBody)


func Move(characterBody: CharacterBody2D):
	characterBody.velocity = _velocity
	characterBody.move_and_slide()
