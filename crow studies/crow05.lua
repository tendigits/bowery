--- JF notes

-- in1: clock in from pams
-- all voices are i2c to Just Friends

s = sequins

count = 1
rmod = -3

function startnotes()
	math.randomseed(time())
	notes = s{math.random()+rmod}
	ii.jf.play_note(notes(),2.0)
	-- reset voices 1 and 2 on 3
	if(count % 3 == 0) then
		ii.jf.play_voice(1,0,0)
		ii.jf.play_voice(2,0,0)
		rmod = rmod + 1
	end
	-- reset voices 3 and 4 on 5
	if(count % 5 == 0) then
		ii.jf.play_voice(3,0,0)
		ii.jf.play_voice(4,0,0)
	end
	count = count + 1
end

function init()
	ii.jf.mode(1)
	ii.jf.play_voice(1,0,0)
	ii.jf.play_voice(2,0,0)
	ii.jf.play_voice(3,0,0)
	ii.jf.play_voice(4,0,0)
	input[1]{mode = 'change', direction = 'rising'}
	input[1].change = startnotes
end