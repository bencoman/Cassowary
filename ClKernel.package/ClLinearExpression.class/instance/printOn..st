printing
printOn: strm
	| sortedKeys |
	self constant printOn: strm.
	sortedKeys := self terms keys
		asSortedCollection: [ :v1 :v2 | v1 name isNil or: [ v2 name isNil or: [ v1 name <= v2 name ] ] ].
	sortedKeys
		do: [ :v | 
			strm nextPut: $+.
			(self terms at: v) printOn: strm.
			strm nextPut: $*.
			v printOn: strm ]