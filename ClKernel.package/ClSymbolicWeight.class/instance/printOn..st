as yet unclassified
printOn: strm
	strm nextPutAll: '['.
	(self at: 1) printOn: strm.
	2 to: self size do: [:i | strm nextPutAll: ','.  (self at: i) printOn: strm].
	strm nextPutAll: ']'
