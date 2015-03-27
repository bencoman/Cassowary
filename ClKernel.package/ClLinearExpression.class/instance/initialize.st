as yet unclassified
initialize
	"ACTION
		Initialize this linear expression to 0.
	"

	self
		constant: 0.0;
		terms: Dictionary new.
	^ self