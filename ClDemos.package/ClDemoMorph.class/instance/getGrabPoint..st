event handling
getGrabPoint: evt
	"Try to find what is my grab point..."

	self
		constraintPointsDo: [ :p | 
			| pv th |
			th := self grabThreshold * 2.
			pv := p x value rounded @ p y value rounded.
			((pv - th corner: pv + th) containsPoint: (evt position - self bounds origin))
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
			grabPoint := nil ]