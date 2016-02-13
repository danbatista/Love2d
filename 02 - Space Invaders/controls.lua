require "player"
local width 	= love.graphics.getWidth()
local height 	= love.graphics.getHeight()

controls = {}
function controls.update(dt)
	if love.keyboard.isDown("left") then 				--Moving left
		player.body:applyForce(-50, 0) 
	elseif love.keyboard.isDown("right") then				--Moving right
		player.body:applyForce(50, 0)
	else
		player.body:setLinearVelocity(0, 0)
	end


	if love.keyboard.isDown("r") then					--Resetting the scene
		print("Resetting...")
		player.body:setPosition(width/2, height/1.11)
		player.body:setLinearVelocity(0, 0) 	
	end
end