event handling
mouseMove: evt
	"Handle a mouse move event."

	"Two uses: indicates the grab point under the mouse pointer; and drag the point if the mouse button is down."

	"Not providing any feedback at the moment."

	dragPoint isNil
		ifTrue: [ ^ self ]
		ifFalse: [ self manipulationMoveTo: (evt position - self bounds origin) ]