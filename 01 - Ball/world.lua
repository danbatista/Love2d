world = {}

function world.load( ... )
	print("Loading world...")
	love.physics.setMeter(64) --Height of a meter in this world will be 64px
	world.world = love.physics.newWorld(0, 9.81*64, true) --Create a world for the bodies to exist in with horizontal gravity of 0 and vertical gravity of 9.81
	love.graphics.setBackgroundColor(104, 136, 248) --set the background color to a nice blue
end