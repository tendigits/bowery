--- sample and hold
-- in1: sampling clock 
-- out1: random sample 
-- out2: random sample 

function init()
	input[1].mode('change',1.0,0.1,'rising')
end

input[1].change = function(state)
	output[1].volts = math.random() * 2.5 - 1.25
	output[2].volts = math.random() * 2 - 0.5
end
