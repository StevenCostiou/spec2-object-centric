Extension { #name : #StBreakpointInspection }

{ #category : #'*NewTools-Inspector-Extension-Object-Centric' }
StBreakpointInspection >> objectCentricBreakpointData [
	| linksForInspectedObject breakpointData |
	linksForInspectedObject := ObjectCentricBreakpointLinksRegistry
		breakpointLinkForObject: model.
	breakpointData := linksForInspectedObject
		collect: [ :b | 
			| data node |
			node := b nodes asOrderedCollection first.
			data := Dictionary new.
			data at: #method put: node methodNode compiledMethod.
			data at: #type put: 'Breakpoint'.
			data
				at: #onceOrAlways
				put:
					('Object-Centric').
			data at: #interval put: (node start to: node stop).
			data at: #target put: 'self (' , model printString , ')'.
			data ].
	^ breakpointData
]
