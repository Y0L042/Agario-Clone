extends Node

@export var _characterBody: CharacterBody2D
@export var _movementComponent: Node
@export var _movementLogicComponent: Node



func _physics_process(delta: float) -> void:
	MoveEntity()


func MoveEntity() -> void:
	if _movementComponent and _movementLogicComponent and _characterBody:
		var direction: Vector2 = _movementLogicComponent.MovementDirection
		_movementComponent.MoveInDirection(direction, _characterBody)
