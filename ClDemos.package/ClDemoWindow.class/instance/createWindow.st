as yet unclassified
createWindow
	"Ok, create main morph."

"	shell :=
		CwTopLevelShell
			createApplicationShell: 'shell'
			argBlock: [:w |
				w
					title: self title;
					width: self initialExtent x;
					height: self initialExtent y].
	main := shell createMainWindow: 'main' argBlock: nil.
	main manageChild.
	form := main createForm: 'form' argBlock: nil.
	form manageChild.
	shell
		addCallback: XmNdestroyCallback
		receiver: self
		selector: #destroyWindow:clientData:callData:
		clientData: nil.
	self createForm"