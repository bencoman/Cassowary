as yet unclassified
buttonRelease: aWidget clientData: clientData callData: callData

	dragPoint isNil ifTrue: [^self].
	dragPoint := nil.

	self endManipulation