require "player"
require "audio"


controls = {}
function controls.update()
	if love.keyboard.isDown("w") then
		player.y = player.y - player.speed 
	end
	if love.keyboard.isDown("s") then
		player.y = player.y + player.speed
	end
	if love.keyboard.isDown("a") then
		player.x = player.x - player.speed
	end
	if love.keyboard.isDown("d") then
		player.x = player.x + player.speed
	end
	if love.keyboard.isDown("q") then
		player.rotate = player.rotate - .01
	end
		if love.keyboard.isDown("e") then
		player.rotate = player.rotate + .01
	end
	if love.keyboard.isDown("f") then
		audio.ItsMeMario:play()
	end
end