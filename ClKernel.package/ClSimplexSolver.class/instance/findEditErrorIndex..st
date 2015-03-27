as yet unclassified
findEditErrorIndex: eVars
	"find the index in editPlusErrorVars of one of the variables in eVars"
		| index |
	eVars do: [:v |
		index := self editPlusErrorVars indexOf: v.
		index > 0 ifTrue: [^index]].
	ExCLInternalError signal  "didn't find a variable"
