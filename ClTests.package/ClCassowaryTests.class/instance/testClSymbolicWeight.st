tests low level
testClSymbolicWeight
	"ClSymbolicWeigth has a limited arithmetic."

	self should: [ 3 / ClSymbolicWeight zero ] raise: ExCLInternalError.
	self shouldnt: [ 3 *  ClSymbolicWeight zero ] raise: ExCLNonlinearExpression