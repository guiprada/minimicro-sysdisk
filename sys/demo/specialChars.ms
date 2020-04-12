// A simple program to display all the special characters
// in the built-in Mini Micro font.

codes = []
codes.push [17, "Left Arrow"]
codes.push [18, "Right Arrow"]
codes.push [19, "Up Arrow"]
codes.push [20, "Down Arrow"]
codes.push [21, "Unprintable character glyph"]
codes.push [57856, "Button Cap Left"]
codes.push [57857, "Button Cap Right"]
codes.push [57872, "Figure Standing"]
codes.push [57873, "Figure Waiting Toe Down"]
codes.push [57874, "Figure Waiting Toe Up"]
codes.push [57875, "Figure Akimbo"]
codes.push [57888, "Tree"]
codes.push [8592, "Left Arrow"]
codes.push [8593, "Up Arrow"]
codes.push [8594, "Right Arrow"]
codes.push [8595, "Down Arrow"]
codes.push [9744, "Empty Box"]
codes.push [9745, "Checked Box"]
codes.push [9746, "Box with X"]
codes.push [9824, "Spade"]
codes.push [9827, "Club"]
codes.push [9829, "Heart"]
codes.push [9830, "Diamond"]
codes.push [9856, "Die Face 1"]
codes.push [9857, "Die Face 2"]
codes.push [9858, "Die Face 3"]
codes.push [9859, "Die Face 4"]
codes.push [9860, "Die Face 5"]
codes.push [9861, "Die Face 6"]

linesPrinted = 0
printMore = function(s)
	if linesPrinted > 24 then
		text.inverse = true
		text.delimiter = ""
		print "(more)"
		text.inverse = false
		k = key.get
		text.column = 0
		print "      "
		text.column = 0
		text.delimiter = char(13)
		if k == char(27) then exit
		globals.linesPrinted = 0
	end if
	print s
	globals.linesPrinted = linesPrinted + 1
end function

for pair in codes
	printMore ("char(" + pair[0] + ")       ")[:12] + char(pair[0]) + "  " + pair[1]
end for

s = "char(134) and char(135) turn "
s = s + char(134) + "inverse on" + char(135) + " and off, respectively."
printMore s