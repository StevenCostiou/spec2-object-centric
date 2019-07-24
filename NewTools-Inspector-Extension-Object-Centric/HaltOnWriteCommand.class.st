Class {
	#name : #HaltOnWriteCommand,
	#superclass : #HaltObjectCentricCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #default }
HaltOnWriteCommand class >> defaultCommandName [
	^ 'Halt on write'
]

{ #category : #hooks }
HaltOnWriteCommand >> execute [
	| object variable |
	variable := self selectedKey asSymbol.
	object := self hostObject.
	Transcript clear.
	('Halt On Write on ' , variable printString , ' for '
		, object printString) crLog
]