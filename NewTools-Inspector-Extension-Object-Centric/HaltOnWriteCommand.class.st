Class {
	#name : #HaltOnWriteCommand,
	#superclass : #HaltObjectCentricCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #hooks }
HaltOnWriteCommand >> execute [
	Transcript clear.
	('Halt On Call on ' , self context printString) crLog
]
