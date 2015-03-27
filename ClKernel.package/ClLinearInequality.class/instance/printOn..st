as yet unclassified
printOn: strm
	self strength printOn: strm.
	strm nextPutAll: '('.
	expression printOn: strm.
	strm nextPutAll: '>=0)'.
