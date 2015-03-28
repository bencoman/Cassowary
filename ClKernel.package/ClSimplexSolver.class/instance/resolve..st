as yet unclassified
resolve: cs
	"ACTION
		Re-solve the current collection of constraints for new values for the constants of the edit variables.
	PARAMETERS
		cs <Array of Float>
	"

	self newEditConstants: cs.
	self resolve