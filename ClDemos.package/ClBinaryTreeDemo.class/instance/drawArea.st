as yet unclassified
drawArea

	self setForegroundColor: 0.
	lines do: [:each |
		buffer
			drawLine: gc
			x1: each first x value rounded
			y1: each first y value rounded
			x2: each last x value rounded
			y2: each last y value rounded].
	self setForegroundColor: 5.
	nodes do: [:each |
		buffer
			fillRectangle: gc
			x: (each x value rounded - 5)
			y: (each y value rounded - 5)
			width: 10
			height: 10]