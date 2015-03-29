as yet unclassified
resizeArea: aWidget clientData: clientData callData: callData
	"	buffer isNil
		ifFalse: [
			buffer freePixmap.
			buffer := nil].
	gc isNil
		ifFalse: [
			gc freeGC.
			gc := nil].
	gcw isNil ifTrue: [gcw := aWidget window createGC: None values: nil].
	buffer :=
		aWidget window createPixmap: aWidget width height: aWidget height depth: aWidget window depth.
	gc := buffer createGC: None values: nil.
	self drawBackground.
	self drawArea"

	