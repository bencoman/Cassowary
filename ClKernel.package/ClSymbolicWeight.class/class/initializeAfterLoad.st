as yet unclassified
initializeAfterLoad
	"ACTION
		Initialize the class variables to the pre-defined strengths.
	"

	Zero := self new.
	1 to: Zero size do: [ :i | Zero at: i put: 0.0 ]