world ={}

local width 	= love.graphics.getWidth()
local height 	= love.graphics.getHeight()

function world.load( ... )
	print("Loading world...")
	love.physics.setMeter(64)
	world.world = love.physics.newWorld(0, 2*64, true)
	love.graphics.setBackgroundColor(0, 0, 0)
	
	print("Loading ground...")
	--Creating the ground
	world.ground 			= {}
	world.ground.body 		= love.physics.newBody(world.world, width/2, height-50/2)
	world.ground.shape 		= love.physics.newRectangleShape(width, 50)
	world.ground.fixture 	= love.physics.newFixture(world.ground.body, world.ground.shape)
end

function world.draw( ... )
	love.graphics.setColor(72, 160, 14)
	love.graphics.polygon("fill", world.ground.body:getWorldPoints(world.ground.shape:getPoints()))
end