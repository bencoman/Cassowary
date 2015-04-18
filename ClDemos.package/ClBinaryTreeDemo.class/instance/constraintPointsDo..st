private
constraintPointsDo: aBlock
	nodes do: [ :each | aBlock value: each ]