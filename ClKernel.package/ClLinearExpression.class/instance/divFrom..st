as yet unclassified
divFrom: aNumber
	"ACTION
		Return a new linear expression (aNumber/self).  Since the result must be linear, this is permissible
		only if self is a constant.

	RETURNS
		<ClLinearExpression>
	"

	self isConstant
		ifTrue: [ ^ aNumber / self constant ].	"result would be non-linear"
	ExCLNonlinearExpression signal