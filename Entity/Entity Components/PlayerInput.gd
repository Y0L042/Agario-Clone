extends Node


var _playerInput: Vector2 : set = SetPlayerInput, get = GetPlayerInput
func SetPlayerInput(playerInput):
	_playerInput = playerInput
func GetPlayerInput():
	return _playerInput


