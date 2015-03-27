*clkernel
cnGEQ: expr strength: s weight: w
	"ACTION
		Return a linear constraint self>=expr of strength s and weight w.

	PARAMETERS
		expr <ClLinearExpression | ClVariable | Number>
		st <ClStrength>
		w <Float>

	RETURNS
		<ClLinearEquation>
	"
		| cn |
	cn := ClLinearInequality new.
	cn expression: self-expr; strength: s; weight: w.
	^cn
