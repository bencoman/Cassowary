instance creation
newWith: val name: n
	"ACTION
		Create a new variable with val as its initial value and name n.

	PARAMETERS
		val <Object>
		n <String>

	RETURNS
		new
	"

	^ self new
		value: val;
		name: n;
		yourself