as yet unclassified
endEdit
	"ACTION
		Do any needed cleanup after editing.  (See beginEdit for the sequence of calls.)
	"

	self editConstraints do: [ :cn | self removeConstraint: cn ].
	self editVars: #().
	self editConstraints: #()