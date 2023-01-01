extends Node

@export var DEADZONE: float = 0.5

var MovementDirection: Vector2 : set = SetMovementDirection, get = GetMovementDirection
func SetMovementDirection(movementDirection) -> void:
	MovementDirection = movementDirection
func GetMovementDirection() -> Vector2:
	return MovementDirection

var PlayerInput: Vector2 : set = SetPlayerInput, get = GetPlayerInput
func SetPlayerInput(playerInput: Vector2) -> void:
	PlayerInput = playerInput
func GetPlayerInput() -> Vector2:
	return PlayerInput

func _unhandled_input(event: InputEvent) -> void:
	PlayerInput = Input.get_vector("game_action_left", "game_action_right", "game_action_up", "game_action_down", DEADZONE)
	MovementDirection = PlayerInput
