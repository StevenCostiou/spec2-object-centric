Class {
	#name : #HaltOnAccessCommand,
	#superclass : #HaltObjectCentricCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #default }
HaltOnAccessCommand class >> defaultCommandName [
	^ 'Halt on access'
]

{ #category : #hooks }
HaltOnAccessCommand >> execute [
	| object variable |
	variable := self selectedKey asSymbol.
	object := self hostObject.
	Transcript clear.
	('Halt On Read on ' , variable printString , ' for '
		, object printString) crLog
]
