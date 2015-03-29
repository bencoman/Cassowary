instance creation
newNamed: n
	"ACTION
		Create a new variable named n.

	PARAMETERS
		n <String>

	RETURNS
		new
	"

	^ self new
		name: n;
		yourself