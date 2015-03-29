accessing
constant: c
	"ACTION
		See #constant

	PARAMETERS
		c <Number>
	"

	self assert: c notNil.
	constant := c