as yet unclassified
destroyWindow: aWidget clientData: clientData callData: callData

	gc isNil
		ifFalse: [
			gc freeGC.
			gc := nil].
	gcw isNil
		ifFalse: [
			gcw freeGC.
			gcw := nil].
	buffer isNil
		ifFalse: [
			buffer freePixmap.
			buffer := nil].
	self destroy