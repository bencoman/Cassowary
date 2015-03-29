as yet unclassified
drawGrabBox
	"	| r pv |

	pv := grabPoint x value rounded @ grabPoint y value rounded.
	gcw
		setFunction: GXhighlight;
		setLineAttributes: 3 lineStyle: LineSolid capStyle: CapButt joinStyle: JoinMiter;
		setForeground: 0.
	r := (pv - self grabThreshold) corner: (pv + self grabThreshold).
	da window drawRectangle: gcw x: r origin x y: r origin y width: r width height: r height.
	gcw setFunction: GXcopy"

	