extends Area2D


var VisionBodyEntities: Array[Node2D]
#var VisionAreaEntities: Array[Node2D] # TODO: To be implemented



func _on_body_entered(body: Node2D) -> void:
	if is_instance_valid(body):
		VisionBodyEntities.append(body)


func _on_body_exited(body: Node2D) -> void:
	if is_instance_valid(body):
		VisionBodyEntities.erase(body)
