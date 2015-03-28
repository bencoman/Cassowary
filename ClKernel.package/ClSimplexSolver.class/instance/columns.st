as yet unclassified
columns
	"ACTION
		Return the dictionary of column cross-indices.  The keys are parametric variables and the values are 
		sets of basic variables.  For each parametric variable p, the set should include all the basic variables
		whose expression includes p.  The columns may be either restricted or unrestricted variables (they
		are intermixed in the one tableau).
	RETURNS
		<LookupTable keys: ClAbstractVariable values: (Set of ClAbstractVariable)>
	"

	^ columns