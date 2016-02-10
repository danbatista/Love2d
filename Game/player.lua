player = {}
function player.load( ... )
	--player.skin = love.graphics.newImage("res/HamsterBall.png")
	player.skin = love.graphics.newImage("res/Mario.png")

	player.x 		= love.graphics.getWidth()/2 	--centers to the middle of the screen
	player.y 		= love.graphics.getHeight()/2	--raises above the top just a little
	player.xvel 	= 0
	player.yvel		= 0
	
	player.width 	= 40
	player.height 	= 40
	
	player.speed 	= 1
	player.friction = 3.5

	player.rotate	= 0
	
	player.scaleX 	= .3
	player.scaleY 	= .3
	
	player.originX	= player.skin:getWidth()/2
	player.originY	= player.skin:getWidth()/2

end

function player.draw( ... )
	print("Drawing Player...")
	love.graphics.draw(player.skin, player.x, player.y, player.rotate, player.scaleX, player.scaleY, player.originX, player.originY)
end

function player.control(dt)
	player.x = player.x + player.xvel

	player.xvel = player.xvel *(1 - math.min(dt * player.friction, 1))


end