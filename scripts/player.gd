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

extends CharacterBody2D
const speed = 400.0
func _ready() -> void:
	position.x = 950.0
	position.y = 925.0
func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	else:
		velocity.x = 0
	move_and_slide()
	position.x = clamp(position.x, 50.0, 1880.0)
