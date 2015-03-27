as yet unclassified
addEditVar: v strength: s
	"ACTION
		Add v to the collection of variables being edited.
	PARAMETERS
		v <ClVariable>
		s <ClStrength>
	"

	self addConstraint: (ClEditConstraint variable: v strength: s)