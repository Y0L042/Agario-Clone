extends Node

@export var _characterBody: CharacterBody2D
@export var _characterCollisionShape: CollisionShape2D

@export var _movementComponent: MovementComponent
@export var _movementLogicComponent: Node

@export var _statsComponent: EntityStatsComponent


func _ready() -> void:
	InitializeMovementComponentSpeed()
	ConnectToAreaChanged()



func ConnectToAreaChanged() -> bool:
	if is_instance_valid(_statsComponent):
		_statsComponent.SizeChanged.connect(ChangeEntityArea)
		return true
	return false



func InitializeMovementComponentSpeed() -> bool:
	if _movementComponent and _statsComponent:
		_movementComponent.SetMaxSpeed(_statsComponent.GetSpeed())
		return true
	return false



func _physics_process(delta: float) -> void:
	MoveEntity()


func MoveEntity() -> void:
	if _movementComponent and _movementLogicComponent and _characterBody:
		var direction: Vector2 = _movementLogicComponent.GetMovementDirection()
		_movementComponent.MoveInDirection(direction, _characterBody)


func ChangeEntityArea(sizeValue: float) -> void:
	var radius: float = sqrt(sizeValue / PI)
	_characterCollisionShape.set_scale(Vector2(radius, radius))
	print(radius)
