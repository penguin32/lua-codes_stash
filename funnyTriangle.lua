 --      *		7,stars: 1,	1+0
 --     ***	8,	3=1+2,	1+2
 --    *****	9,	5=3+2,	1+2+2
 --   *******	10,	7=5+2,	1+2+2+2
 --  *********	11,	9=7+2,	1+2+2+2+2
 -- ***********
 --
 --stars:
 --	1+2(n-1),	starting index one
 --
 --white space:
 --	6,	linear regression at each line
 --	5
 --	4
 --	3
 --	2
 --	1
 --
 --How big is the triangle?
 --	if height is meant to be each line, then linear regression
 --	tells us the height of the triangle.
 --
 --	+ number of white space is directly proportional to
 --		linear regression
 --
 --Function to be written:
 --	function depends on a sigle parameter, height,
 --
 --code:
 --
 local getInput = function(value)
	 if type(value) ~= "number" then
		 print("that is not a number moron")
		 return false,0
	 elseif value < 0 then
		 print("I said, Natural Numbers! are you an idiot???")
		 return false,0
	 elseif math.type(value) == "float" then
		 print("come on man, I said natural number!")
		 return false,0
	 else
		 return true, value
	 end
 end
 while true do
	local height = 0
	local checked = false
	while not(checked) do
		io.write("give me a natural number: ")
--		checked,height = getInput(assert(io.read("*n"),"EOF"))
		checked,height = getInput(io.read("*n"))
	end
	local eachLine = ""
	local n = 1 --line number
	while height ~= 0 do
		for i=1,height do
			eachLine = eachLine .. " "
		end
		local value = 1+2*(n - 1)
		for i=1,value do
			eachLine = eachLine .. "*"
		end
		n = n + 1
		height = height - 1
		print(eachLine)
		eachLine = ""
	end
end
 --	Algorithm/Planning, much easier than coding,
 --	when coding, nature of the blackbox of these vocabularies bestowed
 --	upon the gods...(language creator/the programmer)
 --	is left to our own demise(us the coder)
 --	trials and errors, will do happen since its not your language to begin with.
 --	now learn the god's dialect and its work around.
 --
 --	Buy separating the "thinking" of "coding" between "algorithms"
 --	it gives clarity to what we're working-on infront of our monitor.
 --
 --	Codes doesn't matter, as long as it follows algorithms "efficiently as possible".
