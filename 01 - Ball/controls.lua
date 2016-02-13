require "objects"

local width 	= love.graphics.getWidth()
local height 	= love.graphics.getHeight()
local mouseX	= love.mouse.getX()
local mouseY 	= love.mouse.getY()

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
	end
		function love.mousepressed( mouseX, mouseY, button, istouch ) -- This is so that we can place the block back down
		if button == 1 then
			block 			= 	{}
			block.body 		= 	love.physics.newBody(world.world, mouseX, mouseY, "dynamic")
			block.shape 	= 	love.physics.newRectangleShape(100, 50)
			block.fixture 	= 	love.physics.newFixture(block.body, block.shape)
			table.insert(objects.blocks, block)
			block.body:setLinearVelocity(1, 0)
		end
	end

end