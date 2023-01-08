extends Node


var MovementDirection: Vector2

@export var _vision: Area2D
@export var _enemyGroups: Array[String] : set = SetEnemyGroups, get = GetEnemyGroups
func SetEnemyGroups(enemyGroups: Array[String]) -> void:
	_enemyGroups = enemyGroups
func GetEnemyGroups() -> Array[String]:
	return _enemyGroups

var _enemyEntities: Array[Node2D]

func _physics_process(delta: float) -> void:
	_enemyEntities = _vision.GetEntitiesInGroup(_enemyGroups)
