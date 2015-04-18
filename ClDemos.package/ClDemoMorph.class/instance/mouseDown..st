event handling
mouseDown: evt
	"Handle a mouse down event."

	"If I have a grab point, make it a drag point and start dragging."

	self getGrabPoint: evt.
	grabPoint ifNil: [ ^ self ].
	self drawGrabBox.
	dragPoint := grabPoint.
	grabPoint := nil.
	self beginManipulation