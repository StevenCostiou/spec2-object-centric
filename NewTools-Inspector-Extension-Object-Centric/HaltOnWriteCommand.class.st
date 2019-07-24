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
	self haltOnAccess: #write
]
