constraints
cnGEQ: expr
	"ACTION
		Return a linear constraint self>=expr with strength=required and weight=1.

	PARAMETERS
		expr <ClLinearExpression | ClVariable | Number>

	RETURNS
		<ClLinearInequality>
	"

	^ self cnGEQ: expr strength: ClStrength required weight: 1.0