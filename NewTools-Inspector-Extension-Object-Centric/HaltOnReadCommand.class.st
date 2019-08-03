Class {
	#name : #HaltOnReadCommand,
	#superclass : #HaltObjectCentricCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #default }
HaltOnReadCommand class >> defaultCommandName [
	^ 'On Read'
]

{ #category : #hooks }
HaltOnReadCommand >> execute [
	self haltOnAccess: #read
]
