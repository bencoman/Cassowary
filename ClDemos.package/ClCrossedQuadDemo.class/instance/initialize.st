initialize
initialize

	super initialize.
	p1 := (ClVariable newWith: 110.0) @ (ClVariable newWith: 10.0).
	p2 := (ClVariable newWith: 210.0) @ (ClVariable newWith: 110.0).
	p3 := (ClVariable newWith: 110.0) @ (ClVariable newWith: 210.0).
	p4 := (ClVariable newWith: 10.0) @ (ClVariable newWith: 110.0).

	m1 := (ClVariable newWith: 160.0) @ (ClVariable newWith: 60.0).
	m2 := (ClVariable newWith: 160.0) @ (ClVariable newWith: 160.0).
	m3 := (ClVariable newWith: 60.0) @ (ClVariable newWith: 160.0).
	m4 := (ClVariable newWith: 60.0) @ (ClVariable newWith: 60.0).

	center := (ClVariable newWith: 110.0) @ (ClVariable newWith: 110.0).

	p1 x name: 'p1x'.
	p1 y name: 'p1y'.
	p2 x name: 'p2x'.
	p2 y name: 'p2y'.
	p3 x name: 'p3x'.
	p3 y name: 'p3y'.
	p4 x name: 'p4x'.
	p4 y name: 'p4y'.

	m1 x name: 'm1x'.
	m1 y name: 'm1y'.
	m2 x name: 'm2x'.
	m2 y name: 'm2y'.
	m3 x name: 'm3x'.
	m3 y name: 'm3y'.
	m4 x name: 'm4x'.
	m4 y name: 'm4y'.

	center x name: 'cx'.
	center y name: 'cy'.

	"add stays on the corner points"
	cs addPointStays: (Array with: p1 with: p2 with: p3 with: p4).

	"set up the midpoint constraints"
	cs addConstraint: (p1 x + p2 x cnEqual: 2.0 * m1 x).
	cs addConstraint: (p2 x + p3 x cnEqual: 2.0 * m2 x).
	cs addConstraint: (p3 x + p4 x cnEqual: 2.0 * m3 x).
	cs addConstraint: (p4 x + p1 x cnEqual: 2.0 * m4 x).
	cs addConstraint: (p1 y + p2 y cnEqual: 2.0 * m1 y).
	cs addConstraint: (p2 y + p3 y cnEqual: 2.0 * m2 y).
	cs addConstraint: (p3 y + p4 y cnEqual: 2.0 * m3 y).
	cs addConstraint: (p4 y + p1 y cnEqual: 2.0 * m4 y).

	"set up the centerpoint constraints"
	cs addConstraint: (m1 x + m3 x cnEqual: 2.0 * center x).
	cs addConstraint: (m1 y + m3 y cnEqual: 2.0 * center y).
	cs addConstraint: (m2 x + m4 x cnEqual: 2.0 * center x).
	cs addConstraint: (m2 y + m4 y cnEqual: 2.0 * center y).

	self addAdditionalConstraints.
