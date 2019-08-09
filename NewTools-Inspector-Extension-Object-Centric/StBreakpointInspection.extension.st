Extension { #name : #StBreakpointInspection }

{ #category : #'*NewTools-Inspector-Extension-Object-Centric' }
StBreakpointInspection >> objectCentricBreakpointData [
	| linksForInspectedObject |
	linksForInspectedObject := ObjectCentricBreakpointLinksRegistry
		breakpointLinkForObject: model.
	^ OrderedCollection
		withAll:
			(linksForInspectedObject
				flatCollect: [ :b | 
					b nodes
						collect: [ :node | 
							| data |
							data := Dictionary new.
							data at: #method put: node methodNode compiledMethod.
							data at: #type put: 'Breakpoint'.
							data at: #onceOrAlways put: 'Object-Centric'.
							data at: #interval put: (node start to: node stop).
							data at: #target put: 'self (' , model printString , ')'.
							data at: #breakpoint put: (BreakpointActivator on: b). 
							data ] ])
]

{ #category : #'*NewTools-Inspector-Extension-Object-Centric' }
StBreakpointInspection >> printMethod: aMethod [
	|class|
	class := aMethod methodClass.
	class isAnonymous ifTrue:[class := class superclass].
	^class name, '>>', aMethod selector
	
]
