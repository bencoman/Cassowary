drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	aCanvas
		line: p1 x value rounded @ p1 y value rounded + self bounds origin
		to: p2 x value rounded @ p2 y value rounded + self bounds origin
		color: Color red