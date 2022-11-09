--- lfos into ensemble oscillator

-- in1: white noise
-- out1: es pitch
-- out2: es scale
-- out3: es spread

function init()
	output[1].volts = 0
	output[1].slew = 0.4
	output[1]( lfo(16,0.4) )
	
	output[2].slew = 0.1
	output[2]( lfo(24,0.4) )
	
	output[3].slew = 0.4
	output[3]( lfo(30,1) )
end