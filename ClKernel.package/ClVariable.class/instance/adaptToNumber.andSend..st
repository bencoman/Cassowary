adapting
adaptToNumber: rcvr andSend: selector
	"Adapt to an operation with a number. If we are receiver, then the operation is correctly propagated to my arithmetic methods. If we are argument, then adaptation is needed via asLinearExpression"

	^ rcvr asLinearExpression perform: selector with: self