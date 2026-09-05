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
extends Node
const fruit_scene = preload("res://fruits.tscn")
func _on_timer_timeout() -> void:
	var fruit = fruit_scene.instantiate()
	var random_x = randf_range(50.0, 1920.0)
	fruit.position = Vector2(random_x, -50.0)
	get_tree().current_scene.add_child(fruit)
