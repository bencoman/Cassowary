private
substituteOut: oldVar expr: expr
	"replace all occurrences of oldVar with expr (including in the objective function), and update the 
	  column cross-references.  oldVar should now be a basic variable."

	| col row |
	col := self columns removeKey: oldVar.
	col
		do: [ :v | 
			row := self rows at: v.
			row
				substituteOut: oldVar
				expr: expr
				subject: v
				solver: self.
			(v isRestricted and: [ row constant < 0.0 ])
				ifTrue: [ self infeasibleRows add: v ] ]