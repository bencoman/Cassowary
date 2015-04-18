drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	"draw the four sides of the quadrilateral"
	aCanvas
		line: p1 x value rounded @ p1 y value rounded + self bounds origin
		to: p2 x value rounded @ p2 y value rounded + self bounds origin
		color: Color red.
	aCanvas
		line: p2 x value rounded @ p2 y value rounded + self bounds origin
		to: p3 x value rounded @ p3 y value rounded + self bounds origin
		color: Color red.
	aCanvas
		line: p3 x value rounded @ p3 y value rounded + self bounds origin
		to: p4 x value rounded @ p4 y value rounded + self bounds origin
		color: Color red.
	aCanvas
		line: p4 x value rounded @ p4 y value rounded + self bounds origin
		to: p1 x value rounded @ p1 y value rounded + self bounds origin
		color: Color red.
	"draw the lines between the midpoints"
	aCanvas
		line: m1 x value rounded @ m1 y value rounded + self bounds origin
		to: m2 x value rounded @ m2 y value rounded + self bounds origin
		color: Color gray.
	aCanvas
		line: m2 x value rounded @ m2 y value rounded + self bounds origin
		to: m3 x value rounded @ m3 y value rounded + self bounds origin
		color: Color gray.
	aCanvas
		line: m3 x value rounded @ m3 y value rounded + self bounds origin
		to: m4 x value rounded @ m4 y value rounded + self bounds origin
		color: Color gray.
	aCanvas
		line: m4 x value rounded @ m4 y value rounded + self bounds origin
		to: m1 x value rounded @ m1 y value rounded + self bounds origin
		color: Color gray.
	"draw the cross lines"
	aCanvas
		line: m1 x value rounded @ m1 y value rounded + self bounds origin
		to: m3 x value rounded @ m3 y value rounded + self bounds origin
		color: Color blue.
	aCanvas
		line: m2 x value rounded @ m2 y value rounded + self bounds origin
		to: m4 x value rounded @ m4 y value rounded + self bounds origin
		color: Color blue.