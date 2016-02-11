
counters = {}
function counters.update( ... )
	print("FPS: " .. love.timer.getFPS())
	print("DT: " .. love.timer.getDelta())
	
end
function counters.draw( ... )
	love.graphics.print("Current FPS: " ..tostring(love.timer.getFPS( )), 10, 10)
	love.graphics.print("Current DT: " ..tostring(love.timer.getDelta( )), 10, 30)
end