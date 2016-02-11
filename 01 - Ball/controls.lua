require "objects"

local width 	= love.graphics.getWidth()
local height 	= love.graphics.getHeight()

controls = {}
function controls.update(dt)
	if love.keyboard.isDown("w") then
		objects.player.body:applyForce(0, -200)			--Jump up in the air
	end
	if love.keyboard.isDown("a") then
		objects.player.body:applyForce(-800, 0)			--Move to the left
	end
	if love.keyboard.isDown("s") then
		objects.player.body:applyForce(0, 100)			--Would be moving down
	end
	if love.keyboard.isDown("d") then
		objects.player.body:applyForce(400, 0)			--Move to the right
	end

	if love.keyboard.isDown("r") then					--Resetting the scene
		print("Resetting...")
		objects.player.body:setPosition(width/2, height/2)
		objects.player.body:setLinearVelocity(0, 0) 

		objects.blocks.body:setPosition(200, 550)
		objects.blocks.body:setLinearVelocity(0, 0) 
	end
end