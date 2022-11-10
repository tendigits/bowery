--- drone osc 

-- out1: v/oct
-- out2: OP ratio
-- out3: clock 


function init()
	clock.tempo = 240
	clock.run(heartbeat)
	output[1].volts = -1
	output[1].slew = 3
	output[1].scale({0,2,5,7,9})
	output[2].action = lfo(6,-3)
end 

heartbeat = function()
	while true do 
		clock.sync(1);  
		output[3](pulse()) 
	end
end





