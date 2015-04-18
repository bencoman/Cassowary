instance creation
height: h
	| demo |
	demo := self basicNew.
	demo treeHeight: h.
	demo initialize.
	^ demo