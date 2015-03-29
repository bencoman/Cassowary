private
removeRow: var
	"ACTION
		var should be a basic variable, so that the tableau contains the constraint var=expr.  Remove this row,
		and update the column cross-indices.  Also remove it from infeasibleRows if present.  Return expr.
	PARAMETERS
		var <ClAbstractVariable>
	RETURNS
		<ClLinearExpression>
	"

	| expr |
	expr := self rows removeKey: var.
	expr terms keysDo: [ :v | (self columns at: v) remove: var ].
	self infeasibleRows remove: var ifAbsent: [  ].
	^ expr