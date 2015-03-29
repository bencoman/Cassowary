constraints
addExpression: expr times: n
	"ACTION
		Add n*expr to this expression for another expression expr.

	PARAMETERS
		expr <ClLinearExpression>
		n <Number>
	"

	self incrementConstant: n * expr constant.
	expr terms keysAndValuesDo: [ :v :c | self addVariable: v coefficient: n * c ]