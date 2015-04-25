resolving
optimize: zVar
	"ACTION
		Minimize the value of the objective.  (The tableau should already be feasible.)
	PARAMETERS
		zVar <ClObjectiveVariable>
	"

	| zRow objectiveCoeff minRatio exitVar entryVar r expr coeff |
	zRow := self rows at: zVar.
	[ true ]
		whileTrue: [ 
			"Find the most negative coefficient in the objective function (ignoring dummy variables).
		  If all coefficients are positive we're done"
			objectiveCoeff := nil.
			zRow
				variablesAndCoefficientsDo: [ :v :c | 
					(v isPivotable and: [ objectiveCoeff isNil or: [ c < objectiveCoeff ] ])
						ifTrue: [ 
							objectiveCoeff := c.
							entryVar := v ] ].	"if all coefficients were positive (or if the objective function has no pivotable variables) we are at optimum"
			objectiveCoeff isNil
				ifTrue: [ ^ nil ].
			objectiveCoeff approxNonNegative
				ifTrue: [ ^ nil ].	"Choose which variable to move out of the basis.  Only consider pivotable basic variables (that is,
			restricted, non-dummy variables)."
			minRatio := nil.
			(self columns at: entryVar)
				do: [ :v | 
					v isPivotable
						ifTrue: [ 
							expr := self rows at: v.
							coeff := expr coefficientFor: entryVar.	"only consider negative coefficients"
							coeff < 0.0
								ifTrue: [ 
									r := 0.0 - (expr constant / coeff).
									(minRatio isNil or: [ r < minRatio ])
										ifTrue: [ 
											minRatio := r.
											exitVar := v ] ] ] ].	"If minRatio is still nil at this point, it means that the objective function is unbounded, i.e. it can 
			become arbitrarily negative.  This should never happen in this application."
			minRatio isNil
				ifTrue: [ ExCLInternalError signal: 'The objective function is unbounded' ].
			self pivot: entryVar exitVar: exitVar ]