adapting
adaptToNumber: rcvr andSend: selector
	"We can only adapt in the case of a '*'"

	selector = #*
		ifTrue: [ ^ self * rcvr ].
	ExCLInternalError signal