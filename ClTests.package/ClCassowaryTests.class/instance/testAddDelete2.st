tests
testAddDelete2
	| x y solver result c10  c20 cxy |
	x := ClVariable new name: 'x'.
	y := ClVariable new name: 'y'.
	solver := ClSimplexSolver new.
	solver addConstraint: (x cnEqual: 100.0 strength: ClStrength weak).
	solver addConstraint: (y cnEqual: 120.0 strength: ClStrength strong).
	c10 := x cnLEQ: 10.0.
	c20 := x cnLEQ: 20.0.
	solver
		addConstraint: c10;
		addConstraint: c20.
	result := (x value clApprox: 10.0) & (y value clApprox: 120.0).
	solver removeConstraint: c10.
	result := result & (x value clApprox: 20.0) & (y value clApprox: 120.0).
	cxy := 2 * x cnEqual: y.
	solver addConstraint: cxy.
	result := result & (x value clApprox: 20.0) & (y value clApprox: 40.0).
	solver removeConstraint: c20.
	result := result & (x value clApprox: 60.0) & (y value clApprox: 120.0).
	solver removeConstraint: cxy.
	result := result & (x value clApprox: 100.0) & (y value clApprox: 120.0).
	self assert: result