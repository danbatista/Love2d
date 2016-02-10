
counters = {}
function counters.update( ... )
	print("FPS: " .. love.timer.getFPS())
	
end
function counters.draw( ... )
	love.graphics.print("Current FPS: " ..tostring(love.timer.getFPS( )), 10, 10)
end