tests low level
testClLinearExpressionSubtractFrom
	"aNumber - aClLinearExpression should be equal to -1.0 * aClLinearExpression + aNumber"

	| aClLinearExpression exp1 exp2 |
	aClLinearExpression := (ClVariable newNamed: 'x') asLinearExpression.
	exp1 := 3 - aClLinearExpression.
	exp2 := -1.0 * aClLinearExpression + 3.
	self assert: exp1 constant = exp2 constant.
	self assert: exp1 terms = exp2 terms