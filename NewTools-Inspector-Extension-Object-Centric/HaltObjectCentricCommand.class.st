Class {
	#name : #HaltObjectCentricCommand,
	#superclass : #CmCommand,
	#classInstVars : [
		'defaultCommandName'
	],
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #breakpoints }
HaltObjectCentricCommand >> haltOnAccess: access [
	| object variable |
	object := self hostObject.
	variable := [ self selectedKey asSymbol ]
		on: Error
		do: [ nil ].
	variable
		ifNil: [ object inspectedObject haltOnAccess: access.
			self context refresh.
			^ self ].
	object haltOnAccess: access to: variable.
	self context owner owner refresh
]

{ #category : #breakpoints }
HaltObjectCentricCommand >> haltOnCall [
	| object method |
	object := self hostObject.
	method := self selectedValue.
	method
		ifNil: [ object inspectedObject breakOnCall.
			self context refresh.
			^ self ].
	object breakOnCall: method selector asSymbol.
	self context owner owner refresh
]

{ #category : #accessing }
HaltObjectCentricCommand >> hostObject [
	^ self context owner model
]

{ #category : #accessing }
HaltObjectCentricCommand >> selectedKey [
	^ self context selectedItem key
]

{ #category : #accessing }
HaltObjectCentricCommand >> selectedValue [
	^ self context selectedItem
]
