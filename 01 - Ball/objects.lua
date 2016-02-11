require "world"

local width 	= love.graphics.getWidth()
local height 	= love.graphics.getHeight()

objects = {}

function objects.load( ... )
	print("Loading objects...")
	--Creating the ground
	objects.ground 			= 	{}
	objects.ground.body 	= 	love.physics.newBody(world.world, width/2, height-50/2) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
	objects.ground.shape 	= 	love.physics.newRectangleShape(width, 50) --make a rectangle with a width of 650 and a height of 50
	objects.ground.fixture	= 	love.physics.newFixture(objects.ground.body, objects.ground.shape) --attach shape of ground to the body

	--Creating the ball
	objects.player 			= 	{}
	objects.player.body 	= 	love.physics.newBody(world.world, width/2, height/2, "dynamic") --place the body in the center of the world and make it dynamic, so it can move around
	objects.player.shape 	= 	love.physics.newCircleShape(20)	-- The player will have a radius of 20px
	objects.player.fixture 	= 	love.physics.newFixture(objects.player.body, objects.player.shape) --attach shape of player to the body
	objects.player.fixture:setRestitution(0.9) --let the player bounce

	--Creating blocks
	objects.blocks 			= 	{}
	objects.blocks.body 	= 	love.physics.newBody(world.world, 200, 550, "dynamic")
	objects.blocks.shape 	= 	love.physics.newRectangleShape(100, 50)
	objects.blocks.fixture 	= 	love.physics.newFixture(objects.blocks.body, objects.blocks.shape)
end

function objects.draw( ... )
	--Drawing the ground
	love.graphics.setColor(72, 160, 14) -- set the drawing color to green for the ground
	love.graphics.polygon("fill", objects.ground.body:getWorldPoints(objects.ground.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates

	--Drawing the player
	love.graphics.setColor(193, 47, 14) --set the drawing color to red for the ball
	love.graphics.circle("fill", objects.player.body:getX(), objects.player.body:getY(), objects.player.shape:getRadius())

	--Drawing the blocks
	love.graphics.setColor(50, 50, 50) -- set the drawing color to grey for the blocks
  	love.graphics.polygon("fill", objects.blocks.body:getWorldPoints(objects.blocks.shape:getPoints()))
end