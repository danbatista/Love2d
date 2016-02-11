require "conf"
require "controls"
require "counters"
require "objects"
require "world"

function love.load()
	world.load()
	objects.load()
end

function love.update(dt)
	--counters.update(dt)
	world.world:update(dt)
	controls.update(dt)
end

function love.draw( ... )
	objects.draw()
	counters.draw()
	
end