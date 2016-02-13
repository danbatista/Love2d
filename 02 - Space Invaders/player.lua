require "world"
player = {}
player.shots = {}
local width 	= love.graphics.getWidth()
local height 	= love.graphics.getHeight()


function player.load( ... )
 	--Creating the player
 	player.image 	= love.graphics.newImage("res/Player.png")
 	player.body 	= love.physics.newBody(world.world, width/2, height/1.11, "dynamic")
 	player.shape 	= love.physics.newRectangleShape(10, 10)
 	player.fixture	= love.physics.newFixture(player.body, player.shape)
end



function player.shoot( ... )
	
 	local shot = {}
 	player.shot.body 	= love.physics.newBody(world.world, player.body:getX()/2, player.body:getY()/2, "dynamic")
 	player.shot.shape 	= love.physics.newRectangleShape(10, 20)
 	player.shot.fixture = love.physics.newFixture(player.shot.body, player.shot.shape)
 	table.insert(player.shots, shot)
end

function player.update(dt)
	local removeEnemy 	= {}
	local removeShot 	= {}
	
	for i,v in ipairs(player.shots) do --Updating shots
		v.y = enemy.body:setLinearVelocity(0, -10) -  dt * 100--Moving shots up
	end

	if shot.body:getY() > height then --Removing bullets
   		table.insert(removeShot, i)
   	end

   	for ii, vv in ipairs(enemies) do 
   		
	end
end


function player.draw( ... )
 	love.graphics.draw(player.image, player.body:getX(), player.body:getY(), r, 4, 4, player.image:getWidth()/1.5, player.image:getHeight()/1.5)
end