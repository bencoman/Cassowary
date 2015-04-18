event handling
mouseMove: evt
	"Handle a mouse move event."

	"Two uses: indicates the grab point under the mouse pointer; and drag the point if the mouse button is down."

	"Not providing any feedback at the moment."

	dragPoint isNil
		ifTrue: [ 
			self
				constraintPointsDo: [ :p | 
					| pv th |
					th := self grabThreshold * 2.
					pv := p x value rounded @ p y value rounded.
					((pv - th corner: pv + th) containsPoint: evt position)
						ifTrue: [ 
							grabPoint == p
								ifTrue: [ ^ self ].
							grabPoint notNil
								ifTrue: [ self drawGrabBox ].
							grabPoint := p.
							self drawGrabBox.
							^ self ].
					grabPoint notNil
						ifTrue: [ self drawGrabBox ].
					grabPoint := nil ] ]
		ifFalse: [ self manipulationMoveTo: evt position ]