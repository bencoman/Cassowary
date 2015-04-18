event handling
mouseUp: evt
	"Handle a mouse up event."

	"Release the dragged point, end the manipulation."

	dragPoint isNil
		ifTrue: [ ^ self ].
	dragPoint := nil.
	self endManipulation