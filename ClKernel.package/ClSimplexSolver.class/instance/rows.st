as yet unclassified
rows
	"ACTION
		Return the dictionary of rows in the tableau.  The keys are basic variables and the values are 
		the corresponding expressions.  Both unrestricted and restricted variables are included in the one tableau
		(i.e. the keys may be either restricted or unrestricted variables).
	RETURNS
		<LookupTable keys: ClAbstractVariable values: ClLinearExpression>
	"	
	^rows
