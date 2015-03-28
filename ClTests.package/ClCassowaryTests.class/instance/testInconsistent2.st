tests
testInconsistent2
	| x solver signalled |
	x := ClVariable new name: 'x'.
	solver := ClSimplexSolver new.
	solver addConstraint: (x cnGEQ: 10.0).
	signalled := false.
	[ solver addConstraint: (x cnLEQ: 5.0) ]
		when: ExCLRequiredFailure
		do: [ :signal | 
			signalled := true.
			signal exitWith: false ].
	self assert: signalled