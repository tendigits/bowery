--- modulating disting polyexciter

-- out1: pitch
-- out2: gate

function pitch(count) 
	output[1]( lfo(1,3,'expo') )
end

function gate(count) 
	output[2](pulse())
end

pitcher = metro.init{ event = pitch
						, time = 5
						, count = -1
}

gater = metro.init{ event = gate
						, time = 0.3
						, count = -1
}


function init()
	pitcher:start()
	gater:start()
end