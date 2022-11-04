--- JF synth

-- in1: clock in from pams
-- all voices are i2c to Just Friends

s = sequins

notes = s{0.4,0.5,4.2,0.3,3.4,0.5, s{3.1,0.7,1.2,2.1,1.3}}

function startdrone()
	ii.jf.play_voice(1,notes(),2.0)
	ii.jf.play_voice(2,notes(),3.0)
	ii.jf.play_voice(3,notes(),2.0)
	ii.jf.play_voice(4,notes(),3.0)
	ii.jf.play_voice(5,notes(),2.0)
	ii.jf.play_voice(6,notes(),3.0)
end

function init()
	input[1]{mode = 'change', direction = 'rising'}
	input[1].change = startdrone
end