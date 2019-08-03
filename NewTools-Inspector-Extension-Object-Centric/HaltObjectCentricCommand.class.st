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
	variable := self selectedKey asSymbol.
	variable ifNil: [ object haltOnAccess: access ].
	object haltOnAccess: access to: variable.
	self context owner owner initialize
]

{ #category : #breakpoints }
HaltObjectCentricCommand >> haltOnCall [
	| object method |
	object := self hostObject.
	method := self selectedValue.
	method ifNil: [ ^ object breakOnCall ].
	object breakOnCall: method selector asSymbol.
	self context owner owner initialize
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
