constraints
addStay: v strength: s
	"ACTION
		Add a stay to v at the given strength.
	PARAMETERS
		v <ClVariable>
	"

	self addConstraint: (ClStayConstraint variable: v strength: s)