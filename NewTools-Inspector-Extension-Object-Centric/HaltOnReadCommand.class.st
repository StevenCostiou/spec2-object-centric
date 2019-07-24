Class {
	#name : #HaltOnReadCommand,
	#superclass : #HaltObjectCentricCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #hooks }
HaltOnReadCommand >> execute [
	Transcript clear.
	('Halt On Call on ' , self context printString) crLog
]
