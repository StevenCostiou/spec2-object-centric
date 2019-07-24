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
	self haltOnAccess: #read
]
