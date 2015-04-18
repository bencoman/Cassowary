initialize
initialize
	"ACTION
		Initialize the demo structures before the widgets are created.
	"

	super initialize.
	cs := ClSimplexSolver new.
	color := Color white.
	errorPixel := nil

