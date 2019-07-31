Class {
	#name : #BaselineOfNTOC,
	#superclass : #BaselineOf,
	#category : #BaselineOfNTOC
}

{ #category : #baselines }
BaselineOfNTOC >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'ReflectivityDev'
				with: [ spec
						repository: 'github://StevenCostiou/Reflectivity-dev/repository' ].
			spec
				baseline: 'NewTools'
				with: [ spec
						repository: 'github://StevenCostiou/NewTools:Object-Centric-Integration' ].
			spec
				baseline: 'Avatar'
				with: [ spec repository: 'github://StevenCostiou/avatar' ].
			spec
				baseline: 'ObjectCentricDebugger'
				with: [ spec repository: 'github://StevenCostiou/ObjectCentricDebugger' ].
			spec
				baseline: 'HaltOnStateAccess'
				with: [ spec repository: 'github://StevenCostiou/Pharo-HaltOnStateAccess' ].
			spec
				package: 'NewTools-Inspector-Extension-Object-Centric'
				with: [ spec repository: 'github://StevenCostiou/spec2-object-centric' ] ]
]
