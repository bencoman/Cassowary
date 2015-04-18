drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	{p1.
	p2.
	p3.
	p4.
	p5}
		do: [ :p | aCanvas fillRectangle: ((p x value rounded - 20) @ 160 + self bounds origin extent: 40 @ 40) color: Color red ]