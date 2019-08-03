Class {
	#name : #HaltOnWriteCommand,
	#superclass : #HaltObjectCentricCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #default }
HaltOnWriteCommand class >> defaultCommandName [
	^ 'On Write'
]

{ #category : #hooks }
HaltOnWriteCommand >> execute [
	self haltOnAccess: #write
]
