Class {
	#name : #HaltOnCallCommand,
	#superclass : #HaltObjectCentricCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #default }
HaltOnCallCommand class >> defaultCommandName [
	^ 'Halt on call'
]

{ #category : #hooks }
HaltOnCallCommand >> execute [
	| object method |
	method := self context selectedItem.
	object := self context owner owner inspectedObject.
	Transcript clear.
	('Halt On Call on ' , method printString , ' for '
		, object printString) crLog
]
