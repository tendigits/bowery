--- modulating ensemble oscillator

-- out1: pitch
-- out2: scale
-- out3: spread
-- out4: warp


function init()
	output[1].volts = -4.5
	output[1].slew = 0.4
	output[1]( lfo(5,5) )
	output[2].slew = 0.1
	output[2]( lfo(2,5) )
	output[3].slew = 0.8
	output[3]( lfo(3,7) )
	output[4].volts = 1
	output[4].slew = 0.4
	output[4]( lfo(1,8) )
end