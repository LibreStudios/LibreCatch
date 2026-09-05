# Copyright (C) 2026 LibreStudios
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
extends Area2D
@export var speed: float = 200.0
func _process(delta: float) -> void:
	position.y += speed * delta
	if position.y > 900.0:
		queue_free()
func _on_body_entered(body: Node2D) -> void:
	Global.score += 1
	if body.name == "Player":
		queue_free()
	
