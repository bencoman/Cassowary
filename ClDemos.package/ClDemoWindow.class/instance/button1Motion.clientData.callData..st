as yet unclassified
button1Motion: aWidget clientData: clientData callData: callData

	dragPoint isNil ifTrue: [^self].
	self manipulationMoveTo: callData point