accessing
errorVars
	"ACTION
		Return a lookup table giving the error variables for a non-required constraint.

	RETURNS
		<LookupTable keys: <ClConstraint> values: <Array of: ClSlackVariable>>
	"

	^ errorVars