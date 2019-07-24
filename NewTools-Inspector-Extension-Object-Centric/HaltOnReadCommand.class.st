Class {
	#name : #HaltOnReadCommand,
	#superclass : #HaltObjectCentricCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #default }
HaltOnReadCommand class >> defaultCommandName [
	^ 'Halt on read'
]

{ #category : #hooks }
HaltOnReadCommand >> execute [
	| object variable |
	variable := self selectedKey asSymbol.
	object := self hostObject.
	Transcript clear.
	('Halt On Read on ' , variable printString , ' for '
		, object printString) crLog
]
