tests
testStay1
	| x solver result stay |
	x := ClVariable newWith: 20.0 name: 'x'.	"set up solver with a weak stay on x, required 10<=x<=100, and required x=2*y"
	solver := ClSimplexSolver new.
	stay := ClStayConstraint variable: x strength: ClStrength weak.
	solver addConstraint: stay.
	result := x value clApprox: 20.0.
	solver removeConstraint: stay.
	self assert: result