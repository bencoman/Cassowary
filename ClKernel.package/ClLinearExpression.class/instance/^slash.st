arithmetic
/ x
	"ACTION
		Return a new linear expression formed by dividing self by x.  (Note that this result must be linear.)

	RETURNS
		<ClLinearExpression>
	"

	| expr |
	expr := x asLinearExpression.
	expr isConstant
		ifFalse: [ ExCLNonlinearExpression signal	"result would be non-linear" ].
	^ self * (1.0 / expr constant)