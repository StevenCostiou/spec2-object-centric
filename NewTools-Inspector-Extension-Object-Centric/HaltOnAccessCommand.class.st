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
	self haltOnAccess: #access
]
