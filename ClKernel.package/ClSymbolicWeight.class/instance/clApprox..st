comparing
clApprox: s
	"Return true if this symbolic weight is approximately equal to s. 
		The argument s must be another symbolic weight -- we can't
		compare symbolic weights with ordinary numbers."

	s isSymbolicWeight
		ifFalse: [ ExCLInternalError signal ].
	1 to: self size do: [ :i | 
		((self at: i) clApprox: (s at: i))
			ifFalse: [ ^ false ] ].
	^ true