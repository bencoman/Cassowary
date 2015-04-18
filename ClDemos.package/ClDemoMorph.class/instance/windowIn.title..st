ui
windowIn: aWindow title: aTitle
	| window |
	window := self theme newWindowIn: aWindow for: self title: aTitle.
	window addMorph: self frame: (0 @ 0 corner: 1 @ 1).
	window minimumExtent: 500 @ 500.
	^ window