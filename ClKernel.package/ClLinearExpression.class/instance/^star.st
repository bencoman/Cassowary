arithmetic
* x
	"ACTION
		Return a new linear expression formed by multiplying self by x.  (Note that this result must be linear.)

	RETURNS
		<ClLinearExpression>
	"

	| expr n result |
	"if this expression is just a constant then we can just multiply by it"
	self isConstant
		ifTrue: [ ^ x * self constant ].	"otherwise multiply by x"
	x isNumber
		ifTrue: [ n := x asFloat ]
		ifFalse: [ 
			expr := x asLinearExpression.
			x isConstant
				ifFalse: [ ExCLNonlinearExpression signal	"result would be non-linear" ].
			n := x constant ].
	result := ClLinearExpression new.
	result constant: n * self constant.
	self terms keysAndValuesDo: [ :v :c | result terms at: v put: n * c ].
	^ result