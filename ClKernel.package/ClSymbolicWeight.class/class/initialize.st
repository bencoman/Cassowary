as yet unclassified
initialize
	"ACTION
		Initialize the class variables to the pre-defined strengths.
	"

	"self initialize"

	Zero := self new.
	1 to: Zero size do: [ :i | Zero at: i put: 0.0 ]