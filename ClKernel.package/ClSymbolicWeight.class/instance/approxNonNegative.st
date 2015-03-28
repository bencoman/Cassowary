as yet unclassified
approxNonNegative
	"return true if this symbolic weight is non-negative.  Allow coefficients that are within epsilon of
		0 to count as 0"

	| a nepsilon |
	nepsilon := 0.0 - Float epsilon.
	1 to: self size do: [ :i | 
		a := self at: i.
		a < nepsilon
			ifTrue: [ ^ false ].
		a > Float epsilon
			ifTrue: [ ^ true ] ].
	^ true