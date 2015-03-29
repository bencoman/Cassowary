accessing
expression
	"ACTION
		Return my linear expression.  (For linear equations, this constraint represents
		expression=0; for linear inequalities it represents expression>=0.)
	RETURNS
		<ClLinearExpression>
	"
	self subclassResponsibility
