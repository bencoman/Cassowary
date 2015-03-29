instance creation
newWithSymbolicWeight
	| x |
	x := self new.
	x constant: ClSymbolicWeight zero.
	^ x