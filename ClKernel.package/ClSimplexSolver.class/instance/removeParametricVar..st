private
removeParametricVar: var
	"ACTION
		Remove the parametric variable var, updating the appropriate column and row entries.
	PARAMETERS
		var <ClAbstractVariable>
	"

	| set |
	set := self columns removeKey: var.
	set do: [ :v | (self rows at: v) terms removeKey: var ]