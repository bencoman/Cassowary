as yet unclassified
substituteOut: var expr: expr subject: subject solver: solver
	"ACTION
		Replace var with a symbolic expression expr that is equal to it.  If a variable has been added to this
		expression that wasn't there before, or if a variable has been dropped from this expression 
		because it now has a coefficient of 0, inform the solver.

	PRECONDITIONS
		var occurs with a non-zero coefficient in this expression.

	PARAMETERS
		var <ClAbstractVariable>
		expr <ClLinearExpression>
		subject <ClAbstractVariable>
		solver <ClSimplexSolver>
	"

	| multiplier oldCoeff newCoeff |
	multiplier := self terms removeKey: var.
	self incrementConstant: multiplier * expr constant.
	expr terms
		keysAndValuesDo: [ :v :c | 
			oldCoeff := self terms at: v ifAbsent: [ nil ].
			oldCoeff isNil
				ifTrue: [ 
					self terms at: v put: multiplier * c.
					solver noteAddedVariable: v subject: subject ]
				ifFalse: [ 
					newCoeff := oldCoeff + (multiplier * c).
					newCoeff clApproxZero
						ifTrue: [ 
							self terms removeKey: v.
							solver noteRemovedVariable: v subject: subject ]
						ifFalse: [ self terms at: v put: newCoeff ] ] ]