as yet unclassified
exposeArea: aWidget clientData: clientData callData: callData

	buffer isNil ifTrue: [self resizeArea: aWidget clientData: clientData callData: nil].
	buffer
		copyArea: aWidget window
		gc: gcw
		srcX: 0
		srcY: 0
		width: buffer width
		height: buffer height
		destX: 0
		destY: 0.
	grabPoint := nil