*clkernel
asLinearExpression
	"ACTION
		Coerce this number to a linear expression.

	RETURNS
		<ClLinearExpression>
	"
		| expr |
	expr := ClLinearExpression new.
	expr constant: self asFloat.
	^expr
