Extension { #name : #StMetaBrowser }

{ #category : #'*NewTools-Inspector-Extension-Object-Centric' }
StMetaBrowser >> objectCentricHaltOnCallMenuActions [
	| group |
	group := (CmCommandGroup named: 'Object-Centric')
		decorateWith: SpCommandGroup.
	group register: ((HaltOnCallCommand forSpecContext: methods) iconName: #glamorousBug; yourself).
	^ group
]

{ #category : #'*NewTools-Inspector-Extension-Object-Centric' }
StMetaBrowser >> objectCentricMenuActions [
	| group |
	group := (CmCommandGroup named: 'Object-Centric')
		decorateWith: SpCommandGroup.
	HaltObjectCentricCommand
		allSubclassesDo: [ :cmdClass | group register: (cmdClass forSpecContext: methods) ].
	^ group
]
