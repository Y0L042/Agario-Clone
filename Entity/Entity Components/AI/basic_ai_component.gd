extends Node




@export var _visionComponent: Area2D
@export var _npcEntitiy: Node2D

var _movementDirection: Vector2 = Vector2.ZERO : set = SetMovementDirection, get = GetMovementDirection
func SetMovementDirection(movementDirection) -> void:
	_movementDirection = movementDirection
func GetMovementDirection() -> Vector2:
	return _movementDirection



var _enemyEntities: Array[Node2D]




func _physics_process(delta: float) -> void:
	if is_instance_valid(_visionComponent):
		_enemyEntities = _visionComponent.GetEnemyEntities()

	ChaseEnemy()



func ChaseEnemy() -> void:
	if !is_instance_valid(_npcEntitiy): return
	if _enemyEntities.is_empty(): return

	var chaseDirection: Vector2 = _npcEntitiy.get_global_position().direction_to(_enemyEntities[0].get_global_position())

	SetMovementDirection(chaseDirection)
