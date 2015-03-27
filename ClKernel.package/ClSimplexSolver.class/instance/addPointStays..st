as yet unclassified
addPointStays: points
	"ACTION
		Add weak stays to the x and y parts of each point.  These have declining weights
		so that the solver will try to satisfy the x and y stays on the same point, rather than
		the x stay on one and the y stay on another.
	PARAMETERS
		v <ClVariable>
	"

	| w mult |
	mult := 2.0.	"amount to multiply by the weight each time"
	w := 1.0.
	points
		do: [ :p | 
			self addConstraint: (ClStayConstraint variable: p x strength: ClStrength weak weight: w).
			self addConstraint: (ClStayConstraint variable: p y strength: ClStrength weak weight: w).
			w := w * mult ]