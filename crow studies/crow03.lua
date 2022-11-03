--- Modulated Drone

-- in1: clock 
-- out1: to OP ratio
-- out2: to vca
-- out3: v/oct
-- out4: OP amount

s = sequins

basicseq = s{1,1.2,1.4,1.9,2,2.5,1.7,1.3, s{1,2}}

noteseq = s{0,0.4,0.6,0.8,0.6,0.4}

amtseq = s{2,-2}

function next_operator()
	output[1].volts = basicseq()
	output[3].volts = noteseq()
	output[4].volts = amtseq()
end

function init()
	output[2].volts = 3
	output[1].slew = 0.5
	output[3].slew = 2
	output[4].slew = 1
	input[1]{mode = 'change', direction = 'rising'}
	input[1].change = next_operator
end