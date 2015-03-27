as yet unclassified
- n
	"Subtract n from this symbolic weight (n must also be a symbolic weight)"
		| result |
	n isSymbolicWeight  ifFalse: [ExCLInternalError signal].
	result := self class new.
	1 to: self size do: [:i | result at: i put: (self at: i) - (n at: i)].
	^result
