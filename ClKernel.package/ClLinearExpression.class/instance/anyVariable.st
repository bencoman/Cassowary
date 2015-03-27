as yet unclassified
anyVariable
	"ACTION
		Return a variable in this expression.  (It is an error if this expression is constant).

	Returns
		<ClAbstractVariable>
	"

	self terms keysDo: [ :v | ^ v ].	"signal an error if this expression is constant"
	ExCLInternalError signal