tests
testInconsistent1
	| x solver signalled |
	x := ClVariable new name: 'x'.
	solver := ClSimplexSolver new.
	solver addConstraint: (x cnEqual: 10.0).
	signalled := false.
	[ solver addConstraint: (x cnEqual: 5.0) ]
		on: ExCLRequiredFailure
		do: [ :signal | 
			signalled := true.
			false ].
	self assert: signalled