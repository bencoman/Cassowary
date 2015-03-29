as yet unclassified
pointerMotion: aWidget clientData: clientData callData: callData

	| r |

	dragPoint isNil
		ifTrue: [
			self constraintPointsDo: [:p | | pv th |
				th := self grabThreshold * 2.
				pv := p x value rounded @ p y value rounded.
				(((pv - th) corner: (pv + th)) containsPoint: callData point)
					ifTrue: [
						grabPoint == p ifTrue: [^self].
						grabPoint notNil ifTrue: [self drawGrabBox].
						grabPoint := p.
						self drawGrabBox.
						^self].
				grabPoint notNil ifTrue: [self drawGrabBox].
				grabPoint := nil]]