as yet unclassified
asLinearExpression
	"ACTION
		Coerce this variable to be a linear expression.

	RETURNS
		<ClLinearExpression>
	"

	| expr |
	expr := ClLinearExpression new.
	expr terms at: self put: 1.0.
	^ expr