initialization
initialize
	| zRow |
	zRow := ClLinearExpression newWithSymbolicWeight.
	self
		rows: Dictionary new;
		columns: Dictionary new;
		objective: (ClObjectiveVariable newNamed: 'z');
		infeasibleRows: OrderedCollection new;
		prevEditConstants: Array new;
		stayPlusErrorVars: Array new;
		stayMinusErrorVars: Array new;
		editVars: Array new;
		editConstraints: Array new;
		editPlusErrorVars: Array new;
		editMinusErrorVars: Array new;
		markerVars: Dictionary new;
		errorVars: Dictionary new.
	self rows at: self objective put: zRow.
	slackCounter := 0.
	artificialCounter := 0.
	dummyCounter := 0