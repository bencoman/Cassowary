as yet unclassified
drawArea

	self setForegroundColor: 0.
	buffer
		drawLine: gc
		x1: p1 x value rounded
		y1: p1 y value rounded
		x2: p2 x value rounded
		y2: p2 y value rounded