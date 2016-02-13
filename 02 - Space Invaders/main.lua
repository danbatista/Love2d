require "controls"
require "counters"
require "enemy"
require "player"
require "world"

function love.load( ... )
	world.load()
	player.load()
	enemy.load()
end

function love.update(dt)
	controls.update(dt)
	world.world:update(dt)
	enemy.update(dt)
	player.update(dt)
end

function love.draw( ... )
	counters.draw()
	player.draw()
	enemy.draw()
	world.draw()
end