tests low level
testClVariableDivFrom
	"aNumber / aClVariable should raise ExCLNonlinearExpression"

	self should: [ 3 / (ClVariable newNamed: 'x') ] raise: ExCLNonlinearExpression