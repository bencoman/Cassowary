as yet unclassified
drawArea

	self setForegroundColor: 0.

	buffer
		drawLine: gc
		x1: p1 x value rounded
		y1: p1 y value rounded
		x2: p2 x value rounded
		y2: p2 y value rounded.
	buffer
		drawLine: gc
		x1: m1 x value rounded
		y1: m1 y value rounded -1
		x2: m1 x value rounded
		y2: m1 y value rounded +1.