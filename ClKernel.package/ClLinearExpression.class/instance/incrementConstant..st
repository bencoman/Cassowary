as yet unclassified
incrementConstant: c
	"ACTION
		Increment the constant part of this expression by c.

	PARAMETERS
		c <Number>
	"

	self constant: self constant + c