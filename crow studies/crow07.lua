--- crow metros into Tymp Legio

-- out1: TL Hit
-- out2: TL Pitch
-- out3: TL Wack
-- TL into FX aid with a little "Reverb depth"

function drum1(count) 
	output[2].volts = 0
	output[3].volts = 2
	output[1](pulse())
end

function drum2(count) 
	output[2].volts = 5
	output[3].volts = 0
	output[1](pulse())
end

function drum3(count) 
	output[2].volts = 0
	output[3].volts = 8
	output[1](pulse())
end

drummer1 = metro.init{ event = drum1
						, time = 0.8
						, count = -1
}

drummer2 = metro.init{ event = drum2
						, time = 0.6
						, count = -1
}

drummer3 = metro.init{ event = drum3
						, time = 1.6
						, count = -1
}

function init()
	drummer1:start()
	drummer2:start()
	drummer3:start()
end