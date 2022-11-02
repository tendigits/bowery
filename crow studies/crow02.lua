--- Simple beat sequence 

-- in1: clock from Pams
-- out1-2: trigger to Two of Cups samples

function init()
	input[1].mode('change',1.0,0.1,'rising')
end

function firstbeat()
	output[1]( pulse() )
end

function secondbeat()
	output[2]( pulse() )
end

function drums() 
	delay( firstbeat, .2, 1 )
	delay( secondbeat, .6, 1 )
end

input[1].change = drums
