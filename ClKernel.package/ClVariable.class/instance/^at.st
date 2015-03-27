as yet unclassified
@ obj
	"ACTION
		A convenience method for creating point pairs of
		constrainable variables.  Mostly used in graphic
		constraints where the x and y dimensions are
		constrained separately.

	PARAMETERS
		obj <Object>

	RETURNS
		<Point of <self> obj>
	"

	^ Point x: self y: obj