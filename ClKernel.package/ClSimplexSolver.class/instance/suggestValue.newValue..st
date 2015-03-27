as yet unclassified
suggestValue: var newValue: val
	"ACTION
		We should be editting var.  Suggest a new value for it.
	PARAMETERS
		var <ClVariable>
		val <Float>
	"
	1 to: self editVars size do: [:i | 
		(editVars at: i) == var ifTrue: [self newEditConstants at: i put: val.  ^self]].
	ExCLInternalError signal: 'variable not currently being edited'
