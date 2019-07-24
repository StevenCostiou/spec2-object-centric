Class {
	#name : #HaltOnCallCommand,
	#superclass : #HaltObjectCentricCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #default }
HaltOnCallCommand class >> defaultCommandName [
	^ 'Halt on call'
]

{ #category : #hooks }
HaltOnCallCommand >> execute [
	self haltOnCall
]
