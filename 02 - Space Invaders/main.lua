require "controls"
require "enemy"
require "player"
require "world"

function love.load( ... )
	world.load()
	player.load()
end

function love.update(dt)
	controls.update(dt)
	world.world:update(dt)
end

function love.draw( ... )
	player.draw()
	world.draw()
end