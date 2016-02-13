require "world"
player = {}

local width 	= love.graphics.getWidth()
local height 	= love.graphics.getHeight()


function player.load( ... )
 	--Creating the player
 	player.image 	= love.graphics.newImage("res/Player.png")
 	player.body 	= love.physics.newBody(world.world, width/2, height/1.11, "dynamic")
 	player.shape 	= love.physics.newRectangleShape(10, 10)
 	player.fixture	= love.physics.newFixture(player.body, player.shape)
 end

 function player.draw( ... )
 	love.graphics.draw(player.image, player.body:getX(), player.body:getY(), r, 4, 4, player.image:getWidth()/1.5, player.image:getHeight()/1.5)
 end