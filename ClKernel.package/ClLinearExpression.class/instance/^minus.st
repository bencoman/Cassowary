arithmetic
- x
	"ACTION
		Return a new linear expression formed by subtracting x from self.

	RETURNS
		<ClLinearExpression>
	"

	| expr result |
	expr := x asLinearExpression.	"make a new linear expression to hold the result"
	result := ClLinearExpression new.
	result constant: self constant - expr constant.
	self terms keysAndValuesDo: [ :v :c | result terms at: v put: c ].
	expr variablesAndCoefficientsDo: [ :v :c | result addVariable: v coefficient: 0.0 - c ].
	^ result