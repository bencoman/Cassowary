as yet unclassified
variablesAndCoefficientsDo: aBlock
	"ACTION
		Evaluate aBlock with each variable-coefficient pair as arguments.

	PARAMETERS
		aBlock <Block [ClConstrainableVariable,Number] >
	"

	self terms keysAndValuesDo: [ :v :c | aBlock value: v value: c ]