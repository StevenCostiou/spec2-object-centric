Class {
	#name : #HaltObjectCentricCommand,
	#superclass : #CmCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #breakpoints }
HaltObjectCentricCommand >> haltOnAccess: access [
	| object variable |
	object := self hostObject.
	variable := self selectedKey asSymbol.
	Transcript clear.
	variable
		ifNil: [ ('Halt On ' , access , ' on ' , object printString) crLog ].
	('Halt On ' , access , ' on ' , variable printString , ' for '
		, object printString) crLog
]

{ #category : #breakpoints }
HaltObjectCentricCommand >> haltOnCall [
	| object method |
	object := self hostObject.
	method := self selectedValue.
	Transcript clear.
	method ifNil: [ ('Halt On Call on ' , object printString) crLog ].
	('Halt On Call on ' , method printString , ' for '
		, object printString) crLog
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
