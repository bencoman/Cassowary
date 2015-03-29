tests low level
testClLinearExpressionDivFrom
	"aNumber / aClVariable should raise ExCLNonlinearExpression"

	self should: [ 3 / (ClVariable newNamed: 'x') asLinearExpression ] raise: ExCLNonlinearExpression.
	self shouldnt: [ 3 / 1.0 asLinearExpression ] raise: ExCLNonlinearExpression