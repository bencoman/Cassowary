as yet unclassified
setForegroundColor: c

	gc setForeground: (errorPixel isNil ifTrue: [c] ifFalse: [errorPixel])

