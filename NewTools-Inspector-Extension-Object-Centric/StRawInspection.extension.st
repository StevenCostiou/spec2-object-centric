Extension { #name : #StRawInspection }

{ #category : #'*NewTools-Inspector-Extension-Object-Centric' }
StRawInspection >> objectCentricHaltOnAccessMenuActions [
	| group |
	group := (CmCommandGroup named: 'Object-Centric')
		decorateWith: SpCommandGroup.
	group register: ((HaltOnReadCommand forSpecContext: attributeTable) iconName: #glamorousBug; yourself).
	group register: ((HaltOnWriteCommand forSpecContext: attributeTable) iconName: #glamorousBug; yourself).
	group register: ((HaltOnAccessCommand forSpecContext: attributeTable) iconName: #glamorousBug; yourself).
	^ group
]
