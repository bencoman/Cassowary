as yet unclassified
coefficientFor: var
	"ACTION
		Return the coefficient corresponding to variable var, i.e.,
		the 'ci' corresponding to the 'vi' that var is:
			v1*c1 + v2*c2 + .. + vn*cn + c

	PARAMETERS
		var <ClVariable>

	RETURNS
		<Number>
	"

	^ self terms at: var ifAbsent: [ 0.0 ]