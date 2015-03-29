constraints
addExpression: expr times: n subject: subject solver: solver
	"ACTION
		Add n*expr to this expression for another expression expr.  Notify the solver if
		a variable is added or deleted from this expression.

	PARAMETERS
		expr <ClLinearExpression>
		n <Number>
		subject: <ClAbstractVariable>
		solver <ClSimplexSolver | nil>
	"

	self incrementConstant: n * expr constant.
	expr terms
		keysAndValuesDo: [ :v :c | 
			self
				addVariable: v
				coefficient: n * c
				subject: subject
				solver: solver ]