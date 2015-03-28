tests
testAddDelete3
	| x solver result c1 c2 |
	x := ClVariable new name: 'x'.
	solver := ClSimplexSolver new.
	c1 := x cnEqual: 100.0 strength: ClStrength weak weight: 5.	"notice weight=5 for this one"
	c2 := x cnEqual: 200.0 strength: ClStrength weak.
	solver
		addConstraint: c1;
		addConstraint: c2.
	result := x value clApprox: 100.0.
	solver removeConstraint: c1.
	result := result & (x value clApprox: 200.0).
	self assert: result