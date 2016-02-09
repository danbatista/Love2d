require "conf"
require "player"
require "controls"

function love.load( ... )
	controls.load()
	player.load()
end

function love.update(dt)

end

function love.draw( ... )
	love.graphics.setColor(0, 100, 100)
	love.graphics.circle("fill", player.x, player.y, player.width, player.height)
end