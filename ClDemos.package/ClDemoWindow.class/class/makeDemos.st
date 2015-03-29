instance creation
makeDemos
	"statements to build various demos"

	ClBoundedLineDemo new open.
	ClElasticBoundedLineDemo new open.
	ClQuadDemo new open.
	ClMidpointDemo new open.
	ClBoundedQuadDemo new open.
	ClCrossedQuadDemo new open.
	ClElasticQuadDemo new open.
	ClBoxesDemo new open.
	(ClBinaryTreeDemo height: 4) open