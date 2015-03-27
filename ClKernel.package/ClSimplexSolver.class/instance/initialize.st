as yet unclassified
initialize
		| zRow |
	zRow := ClLinearExpression newWithSymbolicWeight.
	self rows: LookupTable new;
		columns: LookupTable new;
		objective: (ClObjectiveVariable newNamed: 'z');
		infeasibleRows: OrderedCollection new;
		prevEditConstants: Array new;
		stayPlusErrorVars: Array new;
		stayMinusErrorVars: Array new;
		editVars: Array new;
		editConstraints: Array new;
		editPlusErrorVars: Array new;
		editMinusErrorVars: Array new;
		markerVars: LookupTable new;
		errorVars: LookupTable new.
	self rows at: self objective put: zRow.
	slackCounter :=0.  artificialCounter := 0.  dummyCounter := 0.
