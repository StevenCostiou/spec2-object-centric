Extension { #name : #MetaLink }

{ #category : #'*NewTools-Inspector-Extension-Object-Centric' }
MetaLink >> isEnabled [
	^ self hasReifiedCondition not or: [ self condition value ]
]
