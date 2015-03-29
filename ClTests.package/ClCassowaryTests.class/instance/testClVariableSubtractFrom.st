tests low level
testClVariableSubtractFrom
	"aNumber - aClVariable should be equal to -1.0 * aClVariable + aNumber"

	| aClVariable exp1 exp2 |
	aClVariable := ClVariable newNamed: 'x'.
	exp1 := 3 - aClVariable.
	exp2 := -1.0 * aClVariable + 3.
	self assert: exp1 constant = exp2 constant.
	self assert: exp1 terms = exp2 terms