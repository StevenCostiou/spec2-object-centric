Extension { #name : #StMetaBrowser }

{ #category : #'*NewTools-Inspector-Extension-Object-Centric' }
StMetaBrowser >> objectCentricHaltOnCallMenuActions [
	| group |
	group := (CmCommandGroup named: 'Object-Centric')
		decorateWith: SpCommandGroup.
	group register: ((HaltOnCallCommand forSpecContext: methods) iconName: #glamorousBug; yourself).
	^ group
]
