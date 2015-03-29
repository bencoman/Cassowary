as yet unclassified
drawArea

	self setForegroundColor: 0.

	"draw the four sides of the quadrilateral"
	buffer
		drawLine: gc
		x1: p1 x value rounded
		y1: p1 y value rounded
		x2: p2 x value rounded
		y2: p2 y value rounded.
	buffer
		drawLine: gc
		x1: p2 x value rounded
		y1: p2 y value rounded
		x2: p3 x value rounded
		y2: p3 y value rounded.
	buffer
		drawLine: gc
		x1: p3 x value rounded
		y1: p3 y value rounded
		x2: p4 x value rounded
		y2: p4 y value rounded.
	buffer
		drawLine: gc
		x1: p4 x value rounded
		y1: p4 y value rounded
		x2: p1 x value rounded
		y2: p1 y value rounded.

	"draw the lines between the midpoints"
	buffer
		drawLine: gc
		x1: m1 x value rounded
		y1: m1 y value rounded
		x2: m2 x value rounded
		y2: m2 y value rounded.
	buffer
		drawLine: gc
		x1: m2 x value rounded
		y1: m2 y value rounded
		x2: m3 x value rounded
		y2: m3 y value rounded.
	buffer
		drawLine: gc
		x1: m3 x value rounded
		y1: m3 y value rounded
		x2: m4 x value rounded
		y2: m4 y value rounded.
	buffer
		drawLine: gc
		x1: m4 x value rounded
		y1: m4 y value rounded
		x2: m1 x value rounded
		y2: m1 y value rounded.

	"draw the cross lines"
	buffer
		drawLine: gc
		x1: m1 x value rounded
		y1: m1 y value rounded
		x2: m3 x value rounded
		y2: m3 y value rounded.
	buffer
		drawLine: gc
		x1: m2 x value rounded
		y1: m2 y value rounded
		x2: m4 x value rounded
		y2: m4 y value rounded