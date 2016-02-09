require "conf"
require "player"
require "controls"

function love.load( ... )
	print("Loading...")
	controls.load()
	player.load()
	print("Done Loading!")
end

function love.update(dt)
	print("Updating... DT is: ".. dt .."!")
end

function love.draw( ... )
	print("Drawing")
	love.graphics.setColor(0, 100, 100)
	love.graphics.circle("fill", player.x, player.y, player.width, player.height)
end