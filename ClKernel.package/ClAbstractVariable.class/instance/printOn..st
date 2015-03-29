printing
printOn: aStream
	"ACTION
		Prints a semi-descriptive representation to the stream, using the
		name if there is one, and otherwise the hash number of this object.

	EXAMPLES
		x[10.0]					- - w/ name
		x[0.0,100]			-- w/ name, bounds but no value yet
		CV#345(10.0)		- - w/o name

	PARAMETERS
		aStream <WriteStream on <String>>
	"

	self name isNil
		ifTrue: [aStream nextPutAll: 'CV#' , self basicHash printString]
		ifFalse: [aStream nextPutAll: self name].
