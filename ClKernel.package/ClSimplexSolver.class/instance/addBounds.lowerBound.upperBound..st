as yet unclassified
addBounds: var lowerBound: lower upperBound: upper
	"ACTION
		Add constraints so that lower<=var<=upper.  (nil means no  bound.)
	PARAMETERS
		var <ClVariable>
		lower <Number | nil>
		upper <Number | nil>
	"

	lower notNil
		ifTrue: [ self addConstraint: (lower cnLEQ: var) ].
	upper notNil
		ifTrue: [ self addConstraint: (var cnLEQ: upper) ]