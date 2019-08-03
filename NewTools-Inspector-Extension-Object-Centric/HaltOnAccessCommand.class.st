Class {
	#name : #HaltOnAccessCommand,
	#superclass : #HaltObjectCentricCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #default }
HaltOnAccessCommand class >> defaultCommandName [
	^ 'On R/W'
]

{ #category : #hooks }
HaltOnAccessCommand >> execute [
	self haltOnAccess: #all
]
