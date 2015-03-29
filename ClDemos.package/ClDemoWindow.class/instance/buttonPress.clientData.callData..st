as yet unclassified
buttonPress: aWidget clientData: clientData callData: callData

	grabPoint isNil ifTrue: [^self].
	self drawGrabBox.
	dragPoint := grabPoint.
	grabPoint := nil.

	self beginManipulation