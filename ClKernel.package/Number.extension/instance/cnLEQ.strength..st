*clkernel
cnLEQ: expr strength: s
	"ACTION
		Return a linear constraint self<=expr of strength s and weight 1.

	PARAMETERS
		expr <ClLinearExpression | ClVariable | Number>
		s <ClStrength>

	RETURNS
		<ClLinearInequality>
	"
	^self cnLEQ: expr strength: s weight: 1.0

