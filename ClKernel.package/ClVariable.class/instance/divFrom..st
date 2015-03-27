as yet unclassified
divFrom: aNumber
	"ACTION
		We should return a new linear expression (aNumber/self) -- but since the result must be linear, 
		this is always an error.

	RETURNS
		<ClLinearExpression>
	"

	ExCLNonlinearExpression signal