as yet unclassified
subtractFrom: aNumber
	"ACTION
		Return a new linear expression (aNumber-self).

	RETURNS
		<ClLinearExpression>
	"

	^ -1.0 * self + aNumber