printing
printOn: aStream
	"ACTION
		See superclass method.
	PARAMETERS
		aStream <WriteStream on <String>>
	"

	super printOn: aStream.
	aStream nextPutAll: '['.
	self value printOn: aStream.
	aStream nextPutAll: ']'