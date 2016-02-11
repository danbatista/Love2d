require "conf"
require "player"
require "controls"
require "counters"
require "audio"



function love.load( ... )
	print("Loading...")
	player.load()
	audio.load()
	print("Done Loading!")
end

function love.update(dt)
	controls.update(dt)
	counters.update()
end

function love.draw( ... )
	counters.draw()
	player.draw()
end