*clkernel
clApprox: x
	"ACTION
		Test whether I am approximately equal to the argument.

	PARAMETERS
		x <Float>

	RETURNS
		<Boolean>
	"

	| epsilon |

	epsilon := ClSimplexSolver epsilon.
	self = 0.0 ifTrue: [^x abs < epsilon].
	x = 0.0 ifTrue: [^self abs < epsilon].
	^(self - x) abs < (self abs * epsilon)