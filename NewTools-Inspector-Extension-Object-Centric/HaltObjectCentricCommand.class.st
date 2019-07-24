Class {
	#name : #HaltObjectCentricCommand,
	#superclass : #CmCommand,
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #accessing }
HaltObjectCentricCommand >> hostObject [
	^ self context owner owner inspectedObject
]

{ #category : #accessing }
HaltObjectCentricCommand >> selectedKey [
	^ self context selectedItem key
]

{ #category : #accessing }
HaltObjectCentricCommand >> selectedValue [
	^ self context selectedItem
]