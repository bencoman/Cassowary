instance creation
newWith: val
	"ACTION
		Create a new variable with val as its initial value.

	PARAMETERS
		val <Object>

	RETURNS
		new
	"

	^ self new
		value: val;
		yourself