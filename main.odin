package main

import "core:fmt"
import rl "vendor:raylib"

main :: proc() {
	rl.SetConfigFlags({.VSYNC_HINT})
	rl.InitWindow(1280, 1280, "Hello There!")
	rl.SetTargetFPS(500)

	angle: f32 = 0

	for !rl.WindowShouldClose() {
		angle += 1.0

		rl.BeginDrawing()
		rl.ClearBackground({150, 190, 220, 255})

		rect := rl.Rectangle {
			x      = 1280 / 4 * 2 - 60,
			y      = 100,
			width  = 120,
			height = 60,
		}

		origin := rl.Vector2{rect.width / 2, rect.height / 2}
		rl.DrawRectanglePro(rect, origin, angle, {0, 0, 0, 255})

		rl.EndDrawing()
	}

	rl.CloseWindow()
}
