require "player"

enemies = {}
enemy = {}

local width 	= love.graphics.getWidth()
local height 	= love.graphics.getHeight()
local scale = 4
function enemy.load( ... )
	for i=0,7 do
		enemy.image 	= love.graphics.newImage("res/Invader.png")
 		enemy.body 		= love.physics.newBody(world.world, width/2, height/4, "kinematic")
 		enemy.shape 	= love.physics.newRectangleShape(10, 10)
 		enemy.fixture	= love.physics.newFixture(enemy.body, enemy.shape)
		enemy.body:setLinearVelocity(0, 0) 

		enemy.width 	= enemy.image:getWidth()*scale
		enemy.height 	= enemy.image:getHeight()*scale
		enemy.x 		= i * (enemy.width + 10) + 1
		enemy.y 		= enemy.height + 100
		table.insert(enemies, enemy)
	end
end
function enemy.update(dt)
	for i,v in ipairs(enemies) do

    	-- let them fall down slowly
    	v.y = enemy.body:setLinearVelocity(0, 100) 
	end
end

function enemy.draw( ... )
	for i,v in ipairs(enemies) do
    	love.graphics.draw(enemy.image, enemy.body:getX(), enemy.body:getY(), r, scale, scale, enemy.image:getWidth()/1.5, enemy.image:getHeight()/1.5)
	end
	if enemy.body:getY() > player.body:getY() then
   		love.graphics.print("You Lose", width/2, height/2)
   	end 
end