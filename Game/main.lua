require "conf"
require "player"
require "controls"
require "counters"
require "audio"
require "world"



function love.load( ... )
	print("Loading...")
	player.load()
	audio.load()

	print("Done Loading!")
end

function love.update(dt)
	controls.update() -- controls
	
	counters.update()
	print("Updating... DT is: " .. dt .."!")
end

function love.draw( ... )
	counters.draw()
	

	player.draw()
	world.draw()
	
end