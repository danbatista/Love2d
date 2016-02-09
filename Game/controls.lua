require "player"

controls = {}
function controls.load()
	function love.keypressed(key, isrepeat)
		love.keyboard.setKeyRepeat(true)
		if key == "w" then 
			player.y = player.y - 2
		elseif key == "s" then
			player.y = player.y + 2
		elseif key == "a" then
			player.x = player.x - 2
		elseif key == "d" then
			player.x = player.x + 2
		end
	end
end