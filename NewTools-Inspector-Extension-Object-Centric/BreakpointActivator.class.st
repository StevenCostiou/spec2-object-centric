Class {
	#name : #BreakpointActivator,
	#superclass : #Object,
	#instVars : [
		'link',
		'isForHalt'
	],
	#category : #'NewTools-Inspector-Extension-Object-Centric'
}

{ #category : #'instance creation' }
BreakpointActivator class >> on: aMetalink [
	| bpActivator |
	bpActivator := self new.
	bpActivator link: aMetalink.
	bpActivator isForHalt: aMetalink isNil.
	^ bpActivator
]

{ #category : #testing }
BreakpointActivator >> disable [
	self isForHalt
		ifTrue: [ ^ self ].
	link disable
]

{ #category : #testing }
BreakpointActivator >> enable [
	self isForHalt
		ifTrue: [ ^ self ].
	link enable
]

{ #category : #testing }
BreakpointActivator >> isActive [
	^ self isForHalt or: [ link isEnabled ]
]

{ #category : #testing }
BreakpointActivator >> isForHalt [
	^isForHalt
]

{ #category : #accessing }
BreakpointActivator >> isForHalt: anObject [
	isForHalt := anObject
]

{ #category : #accessing }
BreakpointActivator >> link: anObject [
	link := anObject
]
