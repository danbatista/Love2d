player = {}
function player.load( ... )
	--player.skin = love.graphics.newImage("res/HamsterBall.png")
	player.skin = love.graphics.newImage("res/Mario.png")

	player.x 		= love.graphics.getWidth()/2	--centers to the middle of the screen
	player.y 		= love.graphics.getHeight()/2 	--centers to the middle of the screen
	player.width 	= 40
	player.height 	= 40
	player.speed 	= 1
	player.rotate	= 0
	player.scaleX 	= .5
	player.scaleY 	= .5
	player.originX	= player.skin:getWidth( )/2
	player.originY	= player.skin:getWidth( )/2


end
function player.draw( ... )
	print("Drawing Player...")
	love.graphics.draw(player.skin, player.x, player.y, player.rotate, player.scaleX, player.scaleY, player.originX, player.originY)
	love.graphics.rotate("180")
end