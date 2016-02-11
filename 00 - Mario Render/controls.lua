require "player"
require "audio"

controls = {}
function controls.update(dt)
	if love.keyboard.isDown("w") then
		player.y = player.y - player.speed * dt
	end
	if love.keyboard.isDown("s") then
		player.y = player.y + player.speed * dt
	end
	if love.keyboard.isDown("a") then
		player.x = player.x - player.speed * dt
	end
	if love.keyboard.isDown("d") then
		player.x = player.x + player.speed * dt
	end
	if love.keyboard.isDown("q") then
		player.rotate = player.rotate - player.speed/4 * dt
	end
		if love.keyboard.isDown("e") then
		player.rotate = player.rotate + player.speed/4 * dt
	end
	if love.keyboard.isDown("f") then
		audio.ItsMeMario:play()
	end
end