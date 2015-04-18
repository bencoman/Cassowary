as yet unclassified
drawOn: aCanvas
	super drawOn: aCanvas.
	lines
		do: [ :each | 
			aCanvas
				line: each first x value rounded @ each first y value rounded
				to: each last x value rounded @ each last y value rounded
				color: Color black ].
	nodes
		do: [ :each | aCanvas fillRectangle: ((each x value rounded - 5) @ (each y value rounded - 5) extent: 10 @ 10) color: Color blue ]