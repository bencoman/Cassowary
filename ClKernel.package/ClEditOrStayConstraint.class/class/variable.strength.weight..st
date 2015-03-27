instance creation
variable: v strength: s weight: w
	| cn |
	cn := self new.
	cn
		variable: v;
		strength: s;
		weight: w.
	^ cn